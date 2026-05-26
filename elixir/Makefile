# Builds the Erlang NIF (priv/servirtium_nif.so) that links the Aether VCR
# engine (native/libservirtium_vcr.so). Driven by elixir_make via mix compile.
#
# elixir_make passes ERLANG_PATH (the Erlang root, e.g. /usr/lib/erlang) and
# MIX_APP_PATH in the environment. We resolve erl_nif.h from $(ERLANG_PATH)/usr/include.

ERLANG_PATH ?= $(shell erl -noshell -eval 'io:format("~s", [code:root_dir()]), halt().')
ERTS_INCLUDE_DIR ?= $(ERLANG_PATH)/usr/include

PROJECT_DIR := $(shell pwd)
NATIVE_DIR  := $(PROJECT_DIR)/../core/native
PRIV_DIR    := $(PROJECT_DIR)/priv

NIF_SO := $(PRIV_DIR)/servirtium_nif.so
NIF_SRC := c_src/servirtium_nif.c

CFLAGS  ?= -O2 -Wall -Wextra
CFLAGS  += -std=c11 -fPIC -Wno-unused-parameter -I$(ERTS_INCLUDE_DIR)

# Link the engine and embed its directory as an rpath so it loads at runtime
# without LD_LIBRARY_PATH.
LDFLAGS += -shared -fPIC
LDFLAGS += -L$(NATIVE_DIR) -lservirtium_vcr -Wl,-rpath,$(NATIVE_DIR)

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Darwin)
	LDFLAGS := -dynamiclib -undefined dynamic_lookup -fPIC \
	           -L$(NATIVE_DIR) -lservirtium_vcr -Wl,-rpath,$(NATIVE_DIR)
endif

all: $(NIF_SO)

$(NIF_SO): $(NIF_SRC) $(NATIVE_DIR)/libservirtium_vcr.so
	@mkdir -p $(PRIV_DIR)
	$(CC) $(CFLAGS) $(NIF_SRC) $(LDFLAGS) -o $(NIF_SO)

# If the engine lib is missing, build it from the installed Aether toolchain.
$(NATIVE_DIR)/libservirtium_vcr.so:
	@echo "engine lib missing: $@ — build it via the monorepo engine node (aeb)"; exit 1

clean:
	$(RM) $(NIF_SO)

.PHONY: all clean
