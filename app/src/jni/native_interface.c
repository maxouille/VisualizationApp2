//
// Created by bobin on 27/11/2017.
//

#include <jni.h>
#include <android/log.h>

#define LOG_TAG "com.maxence.visualizationapp2"
# define LOGI(...)  ((void)__android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__))
# define LOGW(...)  ((void)__android_log_print(ANDROID_LOG_WARN, LOG_TAG, __VA_ARGS__))
# define LOGD(...)  ((void)__android_log_print(ANDROID_LOG_DEBUG, LOG_TAG, __VA_ARGS__))
# define LOGE(...)  ((void)__android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__))

JNIEXPORT void JNICALL
Java_com_maxence_visualizationapp2_MainActivity_test(JNIEnv *env, jobject obj) {
    LOGD("bite");
}

