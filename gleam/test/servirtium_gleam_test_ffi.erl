-module(servirtium_gleam_test_ffi).
-export([panic_message/1]).

%% Run F; return the message of a Gleam `panic`, or <<>> if it did not panic.
panic_message(F) ->
    try F(), <<>>
    catch error:#{message := M} -> M
    end.
