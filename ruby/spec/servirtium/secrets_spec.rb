require 'tmpdir'
require 'open3'
RSpec.describe 'Named secrets' do
  it 'redacts at emission and resolves four services on the calling thread' do
    fixture = File.expand_path('../../../core_tests/secret_fixture.py', __dir__)
    run = ->(*args) { output, status = Open3.capture2e('python3', fixture, *args); expect(status.success?).to be(true), output; output.strip }
    Dir.mktmpdir('vcr-secrets-') do |dir|
      tape = File.join(dir, 'tape.md'); upstream = run.call('start', dir)
      thread = Thread.current; count = 0
      Servirtium.record(tape, upstream).secret_redactor do |key, request|
        expect(Thread.current).to eq(thread)
        if key == 'password'
          count += 1
          request.path.split('/')[1].upcase + '_PASSWORD'
        end
      end.start do |server|
        run.call('drive', server.base_url); expect(count).to eq(0)
      end
      expect(count).to eq(20); run.call('check', tape)
      expect { Servirtium.playback(tape).start }.to raise_error(Servirtium::Error)
      Servirtium.playback(tape).secret_resolver { |token| 'pw-' + token.delete_suffix('_PASSWORD').downcase + '&secret' }.start do |server|
        run.call('drive', server.base_url); server.assert_no_mismatches
      end
      run.call('check', tape)
    end
  end
end
