# Locate the Erlang header files.

find_program(ERL_BIN
  NAMES erl
  DOC "Erlang erl executable command."
  REQUIRED)

execute_process(
  COMMAND ${ERL_BIN} -noshell -eval "io:format(\"~s\", [code:root_dir()]),halt()."
  OUTPUT_VARIABLE ERLANG_ROOT_DIR)

set(ERLANG_INCLUDE_DIR ${ERLANG_ROOT_DIR}/usr/include)

add_library(erlang INTERFACE)
target_include_directories(erlang INTERFACE ${ERLANG_INCLUDE_DIR})
add_library(Erlang::Headers ALIAS erlang)
