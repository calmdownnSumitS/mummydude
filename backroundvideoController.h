//
//  backroundvideoController.h
//  progressbar
//
//  Created by abc on 7/19/17.
//  Copyright © 2017 hArsh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface backroundvideoController : UIViewController
- (IBAction)action:(id)sender;
//login credential
@property (strong, nonatomic) IBOutlet UITextField *usertext;
@property (strong, nonatomic) IBOutlet UITextField *passwordtext;

@property (strong, nonatomic) IBOutlet UIButton *btnforgetot;
@property (strong, nonatomic) IBOutlet UIButton *loginbtnot;


///////////////////
@property (strong, nonatomic) IBOutlet UIView *vedioview;
@property (strong, nonatomic) IBOutlet UILabel *labelot;
@property (strong, nonatomic) IBOutlet UIButton *btnot;

- (IBAction)loginaction:(id)sender;
@property (strong, nonatomic) IBOutlet UIView *viewot;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollviewoot;
@property (weak, nonatomic) IBOutlet UIView *viewOrange;

@property (weak, nonatomic) IBOutlet UIView *viewBlack;

@property (weak, nonatomic) IBOutlet UIView *viewGreen;

-(void)slideToRightWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer;

-(void)slideToLeftWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer;
@property (strong, nonatomic) IBOutlet UIImageView *imageot;
@property (strong, nonatomic) IBOutlet UILabel *llaabblleoot;
@property (strong, nonatomic) IBOutlet UILabel *thankslablot;
@property (strong, nonatomic) IBOutlet UILabel *visitlblot;

@end
