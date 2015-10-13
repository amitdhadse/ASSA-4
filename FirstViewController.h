//
//  FirstViewController.h
//  SampleProject
//
//  Created by Admin on 25/05/14.
//  Copyright (c) 2014 DemoTest. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
@interface FirstViewController : UIViewController
{IBOutlet UIWebView *web,*web2;
     int count,pfs_count;
    IBOutlet UIButton *pfsBtn,*closeBtn,*conclusion,*concluCloseBtn,*videoCloseBtn,*closevdo;
    IBOutlet UIButton *home,*btn1,*btn2,*btn3,*btn4,*videoBtn,*engVideoBtn,*hindivideoBtn,*skipVideoBtn;
    IBOutlet UISwipeGestureRecognizer *rightGest;
    IBOutlet UIImageView *concluImage,*videoImageView;
    IBOutlet UISwipeGestureRecognizer *leftGest;
    MPMoviePlayerController *evermilVideoPlayer;

}
@property(nonatomic,retain) IBOutlet UIWebView *web;
- (IBAction)swperight:(UISwipeGestureRecognizer *)sender;
- (IBAction)leftsipe:(UISwipeGestureRecognizer *)sender;
- (IBAction)hindiVdoClicked:(id)sender;
- (IBAction)englishVdoClicked:(id)sender;
- (IBAction)pfsBtnClicked:(id)sender;
- (IBAction)closeBtnClicked:(id)sender;
- (IBAction)concluClicked:(id)sender;
- (IBAction)concluCloseClicked:(id)sender;
- (IBAction)videoBtnPressed:(id)sender;
- (IBAction)videoClosePressed:(id)sender;
- (IBAction)closevdoPressed:(id)sender;
- (IBAction)homeClicked:(id)sender;
- (IBAction)home1:(id)sender;
- (IBAction)home2:(id)sender;
- (IBAction)home3:(id)sender;
- (IBAction)home4:(id)sender;
- (void)skipButtonClicked:(id)sender;
- (IBAction)vdoskipBtnClicked:(id)sender;
@end
