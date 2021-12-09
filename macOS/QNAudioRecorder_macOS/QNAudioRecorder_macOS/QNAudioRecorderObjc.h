//
//  QNAudioRecorderObjc.h
//  QNAudioRecorderObjc
//
//  Created by tony.jing on 2021/12/8.
//

#import <Foundation/Foundation.h>

@class QNAudioRecorderObjc;

@protocol QNAudioRecorderObjcDelegate <NSObject>

/**
 * 录制音量回调
 *
 * @param audioReocrder QNAudioRecorderObjc实例
 *
 * @param volume 录制音频音量 . 范围 [0 - 1.0]
 */
- (void)audioRecorder:(QNAudioRecorderObjc *)audioReocrder onVolumeChanged:(double)volume;

@end

@interface QNAudioRecorderObjc : NSObject

@property (nonatomic, weak) id<QNAudioRecorderObjcDelegate> delegate;

/**
 * 开始录制
 *
 * @return QNAudioRecorderObjc   注：成功时返回QNAudioRecorderObjc实例;
 *                           失败时返回nil
 */
+ (QNAudioRecorderObjc *)start;

/**
 * 停止录制
 *
 * @return 是否成功停止录制   YES：成功    NO：失败
 */
- (BOOL)stop;
@end

