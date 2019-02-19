include ./../../common-web.mk

SRC += DankKnob.cpp

# WAM_SRC +=

WAM_CFLAGS += -DFAUST_COMPILED -I$(ROOT)/Dependencies/Build/mac/include

WEB_CFLAGS += -DIGRAPHICS_NANOVG -DIGRAPHICS_GLES2 -DFAUST_COMPILED

WAM_LDFLAGS += -s EXPORT_NAME="'AudioWorkletGlobalScope.WAM.DankKnob'" -O2 -s ASSERTIONS=0

WEB_LDFLAGS += -O2 -s ASSERTIONS=0

WEB_LDFLAGS += $(NANOVG_LDFLAGS)
