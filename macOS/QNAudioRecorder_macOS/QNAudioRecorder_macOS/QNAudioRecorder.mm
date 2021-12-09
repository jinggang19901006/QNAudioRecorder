//
//  QNAudioRecorder.m
//  QNAudioRecorder_macOS
//
//  Created by tony.jing on 2021/12/9.
//

#import "QNAudioRecorder.h"
#import "QNAudioRecorderObjc.h"

extern "C" {
    void* QNAudioRecorderStart(QNAudioVolumeCallback onVolumeChanged)
    {
        QNAudioRecorderObjc *recorderObjc = [QNAudioRecorderObjc start:onVolumeChanged];
        return (__bridge void *)recorderObjc;
    }

    bool QNAudioRecorderStop(void *opaque){
        QNAudioRecorderObjc *recorder = (__bridge QNAudioRecorderObjc *)opaque;
        return [recorder stop];
    }
}
