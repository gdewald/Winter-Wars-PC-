# GNU Make project makefile autogenerated by Premake
ifndef config
  config=debug32
endif

ifndef verbose
  SILENT = @
endif

ifndef CC
  CC = gcc
endif

ifndef CXX
  CXX = g++
endif

ifndef AR
  AR = ar
endif

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

ifeq ($(config),debug32)
  OBJDIR     = obj/x32/Debug/local_png
  TARGETDIR  = ../../lib/d32
  TARGET     = $(TARGETDIR)/liblocal_png_d.so
  DEFINES   += -D_LINUX -D_DEBUG -DDEBUG -DTEST_NASTY_CONDITIONS -DDISABLE_CPP11 -DGLEW_NO_GLU -DDISABLE_CG -DOGG_DLL= -DVORBIS_DLL= -DVORBISFILE_DLL= -DDISABLE_DX9 -DDISABLE_WGL -DTINYXML_DLL= -DTINYXML_EXT= -DZENI_DLL= -DZENI_EXT= -DZENI_AUDIO_DLL= -DZENI_AUDIO_EXT= -DZENI_CORE_DLL= -DZENI_CORE_EXT= -DZENI_GRAPHICS_DLL= -DZENI_GRAPHICS_EXT= -DZENI_NET_DLL= -DZENI_NET_EXT= -DZENI_REST_DLL= -DZENI_REST_EXT=
  INCLUDES  += -I../../jni/external/zlib
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -m32 -fPIC -w
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L../../lib/d32 -shared -m32 -L/usr/lib32 -Wl,-rpath,'$$ORIGIN' -Wl,--hash-style=both
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += -llocal_z_d
  LDDEPS    += ../../lib/d32/liblocal_z_d.so
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR     = obj/x32/Release/local_png
  TARGETDIR  = ../../lib/x32
  TARGET     = $(TARGETDIR)/liblocal_png.so
  DEFINES   += -D_LINUX -DNDEBUG -DDISABLE_CPP11 -DGLEW_NO_GLU -DDISABLE_CG -DOGG_DLL= -DVORBIS_DLL= -DVORBISFILE_DLL= -DDISABLE_DX9 -DDISABLE_WGL -DTINYXML_DLL= -DTINYXML_EXT= -DZENI_DLL= -DZENI_EXT= -DZENI_AUDIO_DLL= -DZENI_AUDIO_EXT= -DZENI_CORE_DLL= -DZENI_CORE_EXT= -DZENI_GRAPHICS_DLL= -DZENI_GRAPHICS_EXT= -DZENI_NET_DLL= -DZENI_NET_EXT= -DZENI_REST_DLL= -DZENI_REST_EXT=
  INCLUDES  += -I../../jni/external/zlib
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -O2 -m32 -fPIC -w
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L../../lib/x32 -s -shared -m32 -L/usr/lib32 -Wl,-rpath,'$$ORIGIN' -Wl,--hash-style=both
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += -llocal_z
  LDDEPS    += ../../lib/x32/liblocal_z.so
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR     = obj/x64/Debug/local_png
  TARGETDIR  = ../../lib/d64
  TARGET     = $(TARGETDIR)/liblocal_png_d.so
  DEFINES   += -D_LINUX -D_DEBUG -DDEBUG -DTEST_NASTY_CONDITIONS -DX64 -DDISABLE_CPP11 -DGLEW_NO_GLU -DDISABLE_CG -DOGG_DLL= -DVORBIS_DLL= -DVORBISFILE_DLL= -DDISABLE_DX9 -DDISABLE_WGL -DTINYXML_DLL= -DTINYXML_EXT= -DZENI_DLL= -DZENI_EXT= -DZENI_AUDIO_DLL= -DZENI_AUDIO_EXT= -DZENI_CORE_DLL= -DZENI_CORE_EXT= -DZENI_GRAPHICS_DLL= -DZENI_GRAPHICS_EXT= -DZENI_NET_DLL= -DZENI_NET_EXT= -DZENI_REST_DLL= -DZENI_REST_EXT=
  INCLUDES  += -I../../jni/external/zlib
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -g -m64 -fPIC -w
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L../../lib/d64 -shared -m64 -L/usr/lib64 -Wl,-rpath,'$$ORIGIN' -Wl,--hash-style=both
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += -llocal_z_d
  LDDEPS    += ../../lib/d64/liblocal_z_d.so
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR     = obj/x64/Release/local_png
  TARGETDIR  = ../../lib/x64
  TARGET     = $(TARGETDIR)/liblocal_png.so
  DEFINES   += -D_LINUX -DNDEBUG -DX64 -DDISABLE_CPP11 -DGLEW_NO_GLU -DDISABLE_CG -DOGG_DLL= -DVORBIS_DLL= -DVORBISFILE_DLL= -DDISABLE_DX9 -DDISABLE_WGL -DTINYXML_DLL= -DTINYXML_EXT= -DZENI_DLL= -DZENI_EXT= -DZENI_AUDIO_DLL= -DZENI_AUDIO_EXT= -DZENI_CORE_DLL= -DZENI_CORE_EXT= -DZENI_GRAPHICS_DLL= -DZENI_GRAPHICS_EXT= -DZENI_NET_DLL= -DZENI_NET_EXT= -DZENI_REST_DLL= -DZENI_REST_EXT=
  INCLUDES  += -I../../jni/external/zlib
  CPPFLAGS  += -MMD -MP $(DEFINES) $(INCLUDES)
  CFLAGS    += $(CPPFLAGS) $(ARCH) -O2 -m64 -fPIC -w
  CXXFLAGS  += $(CFLAGS) 
  LDFLAGS   += -L../../lib/x64 -s -shared -m64 -L/usr/lib64 -Wl,-rpath,'$$ORIGIN' -Wl,--hash-style=both
  RESFLAGS  += $(DEFINES) $(INCLUDES) 
  LIBS      += -llocal_z
  LDDEPS    += ../../lib/x64/liblocal_z.so
  LINKCMD    = $(CC) -o $(TARGET) $(OBJECTS) $(RESOURCES) $(ARCH) $(LIBS) $(LDFLAGS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJECTS := \
	$(OBJDIR)/pngmem.o \
	$(OBJDIR)/pngrio.o \
	$(OBJDIR)/pngrtran.o \
	$(OBJDIR)/pngset.o \
	$(OBJDIR)/pngerror.o \
	$(OBJDIR)/pngrutil.o \
	$(OBJDIR)/pngread.o \
	$(OBJDIR)/pngget.o \
	$(OBJDIR)/pngwtran.o \
	$(OBJDIR)/pngtest.o \
	$(OBJDIR)/pngpread.o \
	$(OBJDIR)/pngwio.o \
	$(OBJDIR)/png.o \
	$(OBJDIR)/pngtrans.o \
	$(OBJDIR)/pngwutil.o \
	$(OBJDIR)/pngwrite.o \

RESOURCES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

.PHONY: clean prebuild prelink

all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking local_png
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning local_png
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH)
	@echo $(notdir $<)
ifeq (posix,$(SHELLTYPE))
	-$(SILENT) cp $< $(OBJDIR)
else
	$(SILENT) xcopy /D /Y /Q "$(subst /,\,$<)" "$(subst /,\,$(OBJDIR))" 1>nul
endif
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
endif

$(OBJDIR)/pngmem.o: ../../jni/external/libpng/pngmem.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/pngrio.o: ../../jni/external/libpng/pngrio.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/pngrtran.o: ../../jni/external/libpng/pngrtran.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/pngset.o: ../../jni/external/libpng/pngset.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/pngerror.o: ../../jni/external/libpng/pngerror.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/pngrutil.o: ../../jni/external/libpng/pngrutil.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/pngread.o: ../../jni/external/libpng/pngread.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/pngget.o: ../../jni/external/libpng/pngget.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/pngwtran.o: ../../jni/external/libpng/pngwtran.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/pngtest.o: ../../jni/external/libpng/pngtest.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/pngpread.o: ../../jni/external/libpng/pngpread.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/pngwio.o: ../../jni/external/libpng/pngwio.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/png.o: ../../jni/external/libpng/png.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/pngtrans.o: ../../jni/external/libpng/pngtrans.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/pngwutil.o: ../../jni/external/libpng/pngwutil.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"
$(OBJDIR)/pngwrite.o: ../../jni/external/libpng/pngwrite.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(CFLAGS) -o "$@" -MF $(@:%.o=%.d) -c "$<"

-include $(OBJECTS:%.o=%.d)