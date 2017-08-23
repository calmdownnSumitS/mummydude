//
//  backroundvideoController.m
//  progressbar
//
//  Created by abc on 7/19/17.
//  Copyright © 2017 hArsh. All rights reserved.
//

#import "backroundvideoController.h"

@interface backroundvideoController ()
{
  
    
    AVPlayer* player;
    BOOL yesno;

}

@end

@implementation backroundvideoController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_viewGreen addSubview:_imageot];
    
    [_viewGreen addSubview:self.llaabblleoot];
    [_viewBlack addSubview:self.thankslablot];
    [self.viewBlack addSubview:self.visitlblot];
    
    UISwipeGestureRecognizer *swipeRightOrange = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
    swipeRightOrange.direction = UISwipeGestureRecognizerDirectionRight;

    UISwipeGestureRecognizer *swipeLeftOrange = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
    swipeLeftOrange.direction = UISwipeGestureRecognizerDirectionLeft;
    
    
    [self.viewOrange addGestureRecognizer:swipeRightOrange];
    [self.viewOrange addGestureRecognizer:swipeLeftOrange];
    
    UISwipeGestureRecognizer *swipeRightBlack = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
    swipeRightBlack.direction = UISwipeGestureRecognizerDirectionRight;
    [self.viewBlack addGestureRecognizer:swipeRightBlack];
    
    UISwipeGestureRecognizer *swipeLeftGreen = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
    swipeLeftGreen.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.viewGreen addGestureRecognizer:swipeLeftGreen];

    
    
  /// auto play vedio
    
    NSURL* mURL = [[NSBundle mainBundle] URLForResource:@"FoodPack1_06_Videvo" withExtension:@"mov"];
    
    player = [AVPlayer playerWithURL:mURL];
    player.actionAtItemEnd = AVPlayerActionAtItemEndNone;
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(playerItemDidReachEnd:)
                                                 name:AVPlayerItemDidPlayToEndTimeNotification
                                               object:[player currentItem]];
    
    AVPlayerLayer* playerLayer = [AVPlayerLayer playerLayerWithPlayer:player];
    playerLayer.frame = _vedioview.bounds;
    playerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;
    playerLayer.needsDisplayOnBoundsChange = YES;
    [_vedioview.layer addSublayer:playerLayer];
    
    _vedioview.layer.needsDisplayOnBoundsChange = YES;
    
    [player play];
    [_vedioview addSubview:_labelot];
    [_vedioview addSubview:_scrollviewoot];
    [_vedioview addSubview:_btnot];
    [_vedioview addSubview:self.viewot];
    [self.viewot setHidden:YES];
    yesno=YES;
    
    [_vedioview addSubview:_viewBlack];
    [_vedioview addSubview:_viewGreen];
    [_vedioview addSubview:_viewOrange];
    [self.viewot addSubview:self.usertext];
      [self.viewot addSubview:self.passwordtext];
      [self.viewot addSubview:self.btnforgetot];
     [self.viewot addSubview:self.loginbtnot];
    
    
}


- (void)playerItemDidReachEnd:(NSNotification *)notification {
    AVPlayerItem *p = [notification object];
    [p seekToTime:kCMTimeZero];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginaction:(id)sender {
    if (yesno==YES) {
        [self.viewot setHidden:NO];
        yesno=NO;
    }
    else
    {
        [self.viewot setHidden:YES];
        yesno=YES;
    }
}


-(void)slideToRightWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
    [UIView animateWithDuration:0.5 animations:^{
        self.viewOrange.frame = CGRectOffset(self.viewOrange.frame, 375, 0.0);
        self.viewBlack.frame = CGRectOffset(self.viewBlack.frame, 375.0, 0.0);
        self.viewGreen.frame = CGRectOffset(self.viewGreen.frame, 375.0, 0.0);
    }];
}
-(void)slideToLeftWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
    [UIView animateWithDuration:0.5 animations:^{
       
        self.viewOrange.frame = CGRectOffset(self.viewOrange.frame, -375.0, 0.0);
        self.viewBlack.frame = CGRectOffset(self.viewBlack.frame, -375.0,0.0);
        self.viewGreen.frame = CGRectOffset(self.viewGreen.frame, -375.0, 0.0);
        
        
       // self.viewOrange.frame= CGRectOffset(<#CGRect rect#>, <#CGFloat dx#>, <#CGFloat dy#>)
        
    }];
}
@end
