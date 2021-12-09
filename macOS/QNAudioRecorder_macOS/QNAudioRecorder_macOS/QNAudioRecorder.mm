//
//  QNAudioRecorder.m
//  QNAudioRecorder_macOS
//
//  Created by tony.jing on 2021/12/9.
//

#import "QNAudioRecorder.h"
#import "QNAudioRecorderObjc.h"

QNAudioRecorderObjc *audioRecorderObjc;

static QNAudioRecorder *_recorder;

@interface QNAudioRecorder()

//@property (nonatomic , strong) QNAudioRecorderObjc *recorder;

@end

@implementation QNAudioRecorder


+ (QNAudioRecorder *)start{
    audioRecorderObjc = [QNAudioRecorderObjc start];
    return  _recorder;
}

- (BOOL)stop{
    return [audioRecorderObjc stop];
}


extern "C" QNAudioRecorder* start(){
    NSLog(@"extern c void getInstance");
    return [QNAudioRecorder start];
    
}
@end
