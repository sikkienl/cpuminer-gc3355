
if WANT_JANSSON
JANSSON_INCLUDES= -I$(top_srcdir)/compat/jansson
else
JANSSON_INCLUDES=
endif

EXTRA_DIST	= example-cfg.json nomacro.pl

SUBDIRS		= compat

INCLUDES	= $(PTHREAD_FLAGS) -fno-strict-aliasing $(JANSSON_INCLUDES)

bin_PROGRAMS	= minerd

dist_man_MANS	= minerd.1

minerd_SOURCES	= \
	elist.h \
	miner.h \
	compat.h \
	cpu-miner.c \
	util.c \
	gc3355.h \
	algo/neoscrypt.c \
	algo/scrypt.c\ 
	algo/sha2.c \
	neoscrypt.h

if USE_ASM
	minerd_SOURCES += asm/neoscrypt_asm.S
if ARCH_x86
	minerd_SOURCES += asm/sha2-x86.S asm/scrypt-x86.S
endif
if ARCH_x86_64
	minerd_SOURCES += asm/sha2-x64.S asm/scrypt-x64.S
endif
if ARCH_ARM
	minerd_SOURCES += asm/sha2-arm.S asm/scrypt-arm.S
endif
endif
minerd_LDFLAGS	= $(PTHREAD_FLAGS)
minerd_LDADD	= @LIBCURL@ @JANSSON_LIBS@ @PTHREAD_LIBS@ @WS2_LIBS@
minerd_CPPFLAGS = @LIBCURL_CPPFLAGS@

