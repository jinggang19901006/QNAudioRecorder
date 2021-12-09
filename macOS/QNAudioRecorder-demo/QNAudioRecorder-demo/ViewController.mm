//
//  ViewController.m
//  QNAudioRecorder-demo
//
//  Created by tony.jing on 2021/12/7.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <QNAudioRecorder_macOS/QNAudioRecorder.h>

static ViewController  *viewController;

@interface ViewController()

@property (nonatomic ,assign) void *audioRecorder;
@property (weak) IBOutlet NSTextField *volumeText;

@end

@implementation ViewController

void volumeChanged(double volume){
    viewController.volumeText.stringValue = [NSString stringWithFormat:@"%f",volume];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    viewController = self;
    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)startBtn:(id)sender {
    void *recorder = QNAudioRecorderStart(volumeChanged);
    if (recorder) {
        self.audioRecorder = recorder;
        if (self.audioRecorder) {
            NSLog(@"开始录制");
        }
    }else{
        NSLog(@"开始录制失败");
    }
}

- (IBAction)stopBtn:(id)sender {
    bool  res = QNAudioRecorderStop(self.audioRecorder);
    if (res) {
        NSLog(@"停止录制");
    }else{
        NSLog(@"停止录制失败");
    }
}
@end
