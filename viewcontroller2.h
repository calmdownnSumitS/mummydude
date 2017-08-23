//
//  viewcontroller2.h
//  progressbar
//
//  Created by abc on 7/17/17.
//  Copyright © 2017 hArsh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface viewcontroller2 : UIViewController
<UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *MyScrolViewIMG;
@property (strong, nonatomic) IBOutlet UIView *ContentView;

@property (strong, nonatomic) IBOutlet UILabel *labeloot;
@property (strong, nonatomic) IBOutlet UIButton *btnot;

- (IBAction)menubarAction:(id)sender;

@property (strong, nonatomic) IBOutlet UIView *menuview;

@end
