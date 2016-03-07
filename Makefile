PROJECT = katana-test

DEPS = xref_runner elvis_core
TEST_DEPS = mixer
BUILD_DEPS = inaka_mk hexer_mk
LOCAL_DEPS = xmerl tools compiler syntax_tools common_test inets ssl test_server hipe public_key dialyzer wx

dep_xref_runner  = hex 0.2.4
dep_mixer        = git https://github.com/inaka/mixer.git 0.1.4
dep_elvis_core   = git https://github.com/inaka/elvis_core.git 0.2.8-2
dep_inaka_mk     = git https://github.com/inaka/inaka.mk.git 1.0.0
dep_hexer_mk     = git https://github.com/inaka/hexer.mk.git 1.1.0

DEP_PLUGINS = inaka_mk hexer_mk

include erlang.mk

ERLC_OPTS := +warn_unused_vars +warn_export_all +warn_shadow_vars +warn_unused_import +warn_unused_function
ERLC_OPTS += +warn_bif_clash +warn_unused_record +warn_deprecated_function +warn_obsolete_guard +strict_validation
ERLC_OPTS += +warn_export_vars +warn_exported_vars +warn_missing_spec +warn_untyped_record +debug_info

TEST_ERLC_OPTS += +debug_info
CT_OPTS = -cover test/cover.spec

SHELL_OPTS = -s sync

erldocs:
	erldocs . -o docs
