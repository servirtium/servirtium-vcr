defmodule Servirtium.VolatileTest do
  @moduledoc """
  Volatile values (docs/volatile-values.md): the shared conformance checks,
  driven by core_tests' volatile_fixture against a playback server.
  """
  use ExUnit.Case, async: false

  @tapes Path.expand("../core_tests/volatile")
  @driver Path.expand("../target/test-tools/volatile_fixture")

  defp drive(mode, srv) do
    {out, status} = System.cmd(@driver, [mode, Servirtium.base_url(srv)], stderr_to_stdout: true)
    assert status == 0, out
  end

  test "rules in the tape only, with pretty_xml" do
    Servirtium.with_playback(Path.join(@tapes, "wcf.md"), [pretty_xml: 2], fn srv ->
      drive("wcf", srv)
      assert Servirtium.volatile_report(srv) =~ "binding: {{messageId-1}} = "
    end)
  end

  test "a profile file" do
    opts = [pretty_xml: 2, volatile_profile: Path.join(@tapes, "profile.md")]
    Servirtium.with_playback(Path.join(@tapes, "wcf_plain.md"), opts, fn srv -> drive("wcf", srv) end)
  end

  test "rules in code" do
    opts = [
      pretty_xml: 2,
      volatile_rule: [
        {"request body", "<a:MessageID>urn:uuid:{{messageId}}</a:MessageID>"},
        {"request body", "<a:To s:mustUnderstand=\"1\">{{endpoint}}/Services/"},
        {"request body", "&lt;SubmissionDate&gt;{{submitted}}&lt;/SubmissionDate&gt;"},
        {"response body", "<a:RelatesTo>urn:uuid:{{messageId}}</a:RelatesTo>"}
      ]
    ]

    Servirtium.with_playback(Path.join(@tapes, "wcf_plain.md"), opts, fn srv -> drive("wcf", srv) end)
  end

  test "markers" do
    opts = [pretty_xml: 2, volatile_markers: :dollar_curly]
    Servirtium.with_playback(Path.join(@tapes, "wcf_dollar.md"), opts, fn srv -> drive("wcf", srv) end)

    err = assert_raise Servirtium.Error, fn -> Servirtium.playback(Path.join(@tapes, "wcf_dollar.md"), pretty_xml: 2) end
    assert Exception.message(err) =~ "DollarCurly"
  end

  test "correlated rules, then a mismatch names the token" do
    Servirtium.with_playback(Path.join(@tapes, "cases.md"), [], fn srv ->
      drive("cases", srv)
      Servirtium.reset_cursor(srv)
      drive("cases-mismatch", srv)
      assert Servirtium.last_error(srv, false) =~ "{{caseId-1}} = 42"
      Servirtium.last_error(srv, true)
    end)
  end

  test "bind" do
    tape = Path.join(@tapes, "cases_recorded.md")
    err = assert_raise Servirtium.Error, fn -> Servirtium.playback(tape) end
    assert Exception.message(err) =~ "caseId"
    Servirtium.with_playback(tape, [bind: [{"caseId", "42"}]], fn srv -> drive("cases", srv) end)
  end

  test "config errors fail the start with the core's message" do
    tape = Path.join(@tapes, "cases.md")

    err = assert_raise Servirtium.Error, fn -> Servirtium.playback(tape, volatile_rule: [{"request body", "no placeholder"}]) end
    assert Exception.message(err) =~ "needs at least one placeholder"

    err =
      assert_raise Servirtium.Error, fn ->
        Servirtium.playback(tape, volatile_rule: [{"response body", "\"caseId\":\"{{id}}\""}])
      end

    assert Exception.message(err) =~ "conflicts with"
    assert Exception.message(err) =~ "(tape)"

    assert_raise Servirtium.Error, fn -> Servirtium.playback(tape, volatile_rule: [{"x", "a {{b}}", "regex"}]) end
  end
end
