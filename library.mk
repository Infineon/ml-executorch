# This file contains additional MTB build flags required for the ExecuTorch library

ifneq (,$(filter ML_EXECUTORCH,$(COMPONENTS)))
    INCLUDES+=$(SEARCH_ml-executorch)/include
    INCLUDES+=$(SEARCH_ml-executorch)/include/executorch/runtime/core/portable_type/c10

    LDFLAGS+=-L $(SEARCH_ml-executorch)/COMPONENT_ML_EXECUTORCH/COMPONENT_U55/TOOLCHAIN_GCC_ARM/libs
    LDFLAGS+=-Wl,--wrap=vsnprintf
    LDFLAGS+=-Wl,--whole-archive -lcortex_m_ops_lib -lexecutorch -Wl,--no-whole-archive

    DEFINES+=C10_USING_CUSTOM_GENERATED_MACROS
    DEFINES+=ET_DEBUG_BUFFER_SIZE=0x1000
    DEFINES+=ETHOSU
endif
