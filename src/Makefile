EXE=invNorm
SRCONLY = Main.cpp
HDRONLY = Logger.h

DATE=$(shell date)
USER=$(shell whoami)

override USER_COMPILE_VARS += -DDATE="\"${DATE}\"" -DVERSION="\"${VERSION}\"" -DUSER="\"${USER}\""
COMPILE_ANY_CHANGE = Main

PARENT_MAKE = Makefile.src
include ../Makefile.inc

