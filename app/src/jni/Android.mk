LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := native-interface

LOCAL_SHORT_COMMANDS := true

LOCAL_C_INCLUDES +=  $(LOCAL_PATH)/ \
                     $(LOCAL_PATH)/fftw3 \
                     $(LOCAL_PATH)/fftw3/api \
					 $(LOCAL_PATH)/fftw3/dft \
                     $(LOCAL_PATH)/fftw3/dft/scalar \
                     $(LOCAL_PATH)/fftw3/dft/scalar/codelets \
                     $(LOCAL_PATH)/fftw3/kernel \
                     $(LOCAL_PATH)/fftw3/libbench2 \
                     $(LOCAL_PATH)/fftw3/rdft \
					 $(LOCAL_PATH)/fftw3/rdft/scalar \
                     $(LOCAL_PATH)/fftw3/rdft/scalar/r2cb \
                     $(LOCAL_PATH)/fftw3/rdft/scalar/r2r \
                     $(LOCAL_PATH)/fftw3/rdft/scalar/r2cf \
					 $(LOCAL_PATH)/fftw3/reodft

LOCAL_SRC_FILES += $(subst $(LOCAL_PATH)/,,$(wildcard $(LOCAL_PATH)/*.c)) \
$(subst $(LOCAL_PATH)/,,$(wildcard $(LOCAL_PATH)/**/*.c)) \
$(subst $(LOCAL_PATH)/,,$(wildcard $(LOCAL_PATH)/**/**/*.c)) \
$(subst $(LOCAL_PATH)/,,$(wildcard $(LOCAL_PATH)/**/**/**/*.c))


LOCAL_LDLIBS := -llog \
                -landroid

include $(BUILD_SHARED_LIBRARY)


