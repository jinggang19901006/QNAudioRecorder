//
//  QNAudioRecorder.h
//  QNAudioRecorder_macOS
//
//  Created by tony.jing on 2021/12/9.
//
#include <stdbool.h>

//音量回调 音量值范围 [0 - 1.0]
typedef void (*QNAudioVolumeCallback)(double volume);

extern "C" {

/**
 * 开始录制
 *
 * @param onVolumeChanged 音量回调
 * @return QNAudioRecorder   注：成功时返回QNAudioRecorder实例;
 *                           失败时返回nil
 *
 * @warning 该方法使用到了系统内置麦克风设备，该设备为系统独占资源，请勿重复调用，如多次调用会失败并返回nil。
 */
void *QNAudioRecorderStart(QNAudioVolumeCallback onVolumeChanged);


/**
 * 停止录制
 *
 * @param QNAudioRecorder 实例
 * @return 是否成功停止录制   YES：成功    NO：失败
 */
bool QNAudioRecorderStop(void *);

}


