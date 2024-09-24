

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:=     \
   str2str.c       		\
   src/_stream.c			\
   src/streamsvr.c		\
   src/rtkcmn.c				\
   src/trace.c				\
   src/solution.c			\
   src/sbas.c					\
   src/geoid.c				\
   src/rcvraw.c				\
   src/rcv/novatel.c	\
   src/rcv/ublox.c		\
   src/rcv/crescent.c	\
   src/rcv/skytraq.c	\
   src/rcv/javad.c		\
   src/rcv/nvs.c			\
   src/rcv/binex.c		\
   src/rcv/rt17.c			\
   src/rtcm.c					\
   src/rtcm2.c				\
   src/rtcm3.c				\
   src/rtcm3e.c				\
   src/preceph.c			\
   src/rcv/septentrio.c	\
   src/rcv/swiftnav.c	\
   src/rcv/unicore.c
   

LOCAL_CFLAGS:= -Wno-error -g -O0 -std=c99 -Wall -O3 -pedantic -Wno-unused-but-set-variable -DENAGLO -DENAGAL -DENAQZS -DENACMP -DENAIRN -DTRACE -DNFREQ=3 -DNEXOBS=3 -DSVR_REUSEADDR 

# Disable prelink, or add to build/core/prelink-linux-arm.map
LOCAL_PRELINK_MODULE := false

LOCAL_MODULE_TAGS := optional

# Build executable
LOCAL_MODULE:= str2str
include $(BUILD_EXECUTABLE)
