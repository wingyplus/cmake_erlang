#include <erl_nif.h>

static ERL_NIF_TERM bar_nif(ErlNifEnv *env, int argc,
                            const ERL_NIF_TERM argv[]) {
  return enif_make_string_len(env, "Bar", 3, ERL_NIF_LATIN1);
}

static ErlNifFunc nif_funcs[] = {
    {"bar", 0, bar_nif},
};

ERL_NIF_INIT(foo, nif_funcs, NULL, NULL, NULL, NULL)
