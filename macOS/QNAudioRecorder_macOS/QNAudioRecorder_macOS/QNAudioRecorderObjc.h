//
//  QNAudioRecorderObjc.h
//  QNAudioRecorderObjc
//
//  Created by tony.jing on 2021/12/8.
//

#import <Foundation/Foundation.h>

typedef void (*onVolumeChanged)(double volume);

@interface QNAudioRecorderObjc : NSObject

/**
 * 开始录制
 *
 * @return QNAudioRecorderObjc   注：成功时返回QNAudioRecorderObjc实例;
 *                           失败时返回nil
 */
+ (QNAudioRecorderObjc *)start:(void(*)(double volume))callBack;

/**
 * 停止录制
 *
 * @return 是否成功停止录制   YES：成功    NO：失败
 */
- (BOOL)stop;
@end

