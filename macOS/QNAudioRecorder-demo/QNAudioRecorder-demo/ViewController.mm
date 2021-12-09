//
//  ViewController.m
//  QNAudioRecorder-demo
//
//  Created by tony.jing on 2021/12/7.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <QNAudioRecorder_macOS/QNAudioRecorder.h>

@interface ViewController()

@property (nonatomic ,strong) QNAudioRecorder *audioRecorder;
@property (weak) IBOutlet NSTextField *volumeText;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)startBtn:(id)sender {
      _audioRecorder = start();
//    self.audioRecorder = [QNAudioRecorder start];
//    if (self.audioRecorder) {
//        self.audioRecorder.delegate = self;
//        NSLog(@"开始录制");
//    }else{
//        NSLog(@"开始录制失败");
//    }
}

- (IBAction)stopBtn:(id)sender {
//    BOOL ret = [self.audioRecorder stop];
//    if (ret) {
//        NSLog(@"停止录制");
//    }else{
//        NSLog(@"停止录制失败");
//    }
}


#pragma mark - QNAudioRecorderDelegate
//-(void)audioRecorder:(QNAudioRecorder *)audioReocrder onVolumeChanged:(double)volume{
//    self.volumeText.stringValue = [NSString stringWithFormat:@"%lf",volume];
//}
@end
