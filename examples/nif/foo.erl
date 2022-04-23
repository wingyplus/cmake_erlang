-module(foo).
-export([bar/0]).
-on_load(init/0).

init() ->
    ok = erlang:load_nif("./build/libfoo", 0).

bar() ->
    exit(nif_library_not_loaded).