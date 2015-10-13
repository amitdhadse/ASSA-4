//
//  FirstViewController.m
//  SampleProject
//
//  Created by Admin on 25/05/14.
//  Copyright (c) 2014 DemoTest. All rights reserved.
//

#import "FirstViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize web;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [pfsBtn setHidden:YES];
    [web2 setHidden:YES];
    [closeBtn setHidden:YES];
    [concluCloseBtn setHidden:YES];
    [conclusion setHidden:NO];
    [concluImage setHidden:YES];
    web.scrollView.bounces=NO;
    NSString *path=[[NSBundle mainBundle] pathForResource:@"slide01" ofType:@"html" inDirectory:@"Bloero"];
    NSURL *url=[NSURL fileURLWithPath:path];
    web.frame=CGRectMake(0, 0, 1024, 768);
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [web loadRequest:request];
    web.scrollView.scrollEnabled=NO;
    [super viewDidLoad];
    [conclusion setUserInteractionEnabled:YES];

   
    [btn1 setImage:[UIImage imageNamed:@"1st Btn.png"] forState:UIControlStateNormal];
    [btn1 setImage:[UIImage imageNamed:@"1st Btn_1.png"] forState:UIControlStateHighlighted];
    [btn2 setImage:[UIImage imageNamed:@"2nd Btn.png"] forState:UIControlStateNormal];
    [btn2 setImage:[UIImage imageNamed:@"2nd Btn_1.png"] forState:UIControlStateHighlighted];
    [btn3 setImage:[UIImage imageNamed:@"3rd Btn.png"] forState:UIControlStateNormal];
    [btn3 setImage:[UIImage imageNamed:@"3rd Btn_1.png"] forState:UIControlStateHighlighted];
    [btn4 setImage:[UIImage imageNamed:@"4th Btn.png"] forState:UIControlStateNormal];
    [btn4 setImage:[UIImage imageNamed:@"4th Btn_1.png"] forState:UIControlStateHighlighted];
    [web addSubview:btn1];
    [web addSubview:btn2];
    [web addSubview:btn3];
    [web addSubview:btn4];
    [web addSubview:videoBtn];
    [web bringSubviewToFront:videoBtn];
    [web bringSubviewToFront:btn1];
    [web bringSubviewToFront:btn1];
    [web bringSubviewToFront:btn1];
    [web bringSubviewToFront:btn1];


    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    rightGest = nil;
    leftGest = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

-(BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation{
    return (toInterfaceOrientation==UIInterfaceOrientationLandscapeLeft || toInterfaceOrientation==UIInterfaceOrientationLandscapeRight);
}

- (IBAction)swperight:(UISwipeGestureRecognizer *)sender {

    if (count != 1)
    {
    [UIView transitionWithView:self.view.window
                      duration:1.0f
                       options:UIViewAnimationOptionTransitionNone
                    animations:^{
                       
                            [self prevView];
                        
                    }
                    completion:NULL];
    }
    else
    {
        if([leftGest isKindOfClass: [UITapGestureRecognizer class]])
        {
            leftGest.enabled=NO;
        }

    }
    
    if (pfs_count !=1)
    {
    if ([pfsBtn isMemberOfClass:[UIButton class]])
    {
        [UIView transitionWithView:self.view.window
                          duration:1.0f
                           options:UIViewAnimationOptionTransitionNone
                        animations:^{
                            
                            [self pfsPrevSlide];
                            
                        }
                        completion:NULL];
    }
    }
    else
    {
        if([leftGest isKindOfClass: [UITapGestureRecognizer class]])
        {
            leftGest.enabled=NO;
        }

        
    }
}

- (IBAction)leftsipe:(UISwipeGestureRecognizer *)sender {
   
    if (count != 6)
    {
    [UIView transitionWithView:self.view.window
                      duration:1.0f
                       options:UIViewAnimationOptionTransitionNone
                    animations:^{
                         
                        [self nextView];
                                            
                    }
                    completion:NULL];
    }
    else
    {
        if([rightGest isKindOfClass: [UITapGestureRecognizer class]])
        {
            rightGest.enabled=NO;
        }
        
    }
    
    
    if (pfs_count !=3)
    {
    if ([pfsBtn isMemberOfClass:[UIButton class]])
    {
        [UIView transitionWithView:self.view.window
                          duration:1.0f
                           options:UIViewAnimationOptionTransitionNone
                        animations:^{
                            
                            [self pfsNextSlide];
                            
                        }
                        completion:NULL];
    }
    }
    else
    {
        if([rightGest isKindOfClass: [UITapGestureRecognizer class]])
        {
            rightGest.enabled=NO;
        }
        
    }
}

- (IBAction)homeClicked:(id)sender
{
    [videoBtn setHidden:NO];

     [pfsBtn setHidden:YES];
    [web setHidden:NO];
    [web addSubview:btn1];
    [web addSubview:btn2];
    [web addSubview:btn3];
    [web addSubview:btn4];
    [web bringSubviewToFront:btn1];
    [web bringSubviewToFront:btn1];
    [web bringSubviewToFront:btn1];
    [web bringSubviewToFront:btn1];
    [web addSubview:home];
    [web addSubview:conclusion];
    [web2 setHidden:YES];
    [closeBtn setHidden:YES];
    [concluCloseBtn setHidden:YES];
    [concluImage setHidden:YES];
    web.scrollView.bounces=NO;
    [home setImage:[UIImage imageNamed:@"Home Btn.png"] forState:UIControlStateNormal];
    [home setImage:[UIImage imageNamed:@"Home Btn_1.png"] forState:UIControlStateHighlighted];
    NSString *path=[[NSBundle mainBundle] pathForResource:@"slide01" ofType:@"html" inDirectory:@"Bloero"];
    NSURL *url=[NSURL fileURLWithPath:path];
    web.frame=CGRectMake(0, 0, 1024, 768);
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [web loadRequest:request];
    web.scrollView.scrollEnabled=NO;
    [self.view addSubview:web];
    [super viewDidLoad];
    count=0;
}
- (IBAction)home1:(id)sender
{
    [web addSubview:btn1];
    [web addSubview:btn2];
    [web addSubview:btn3];
    [web addSubview:btn4];
    [web bringSubviewToFront:btn1];
    [web bringSubviewToFront:btn1];
    [web bringSubviewToFront:btn1];
    [web bringSubviewToFront:btn1];
    [videoBtn setHidden:YES];

    [pfsBtn setHidden:YES];
        NSString *path=[[NSBundle mainBundle] pathForResource:@"slide02" ofType:@"html" inDirectory:@"Bloero"];
        NSURL *url=[NSURL fileURLWithPath:path];
        NSURLRequest *request=[NSURLRequest requestWithURL:url];
        [web loadRequest:request];
        count=1;
    [conclusion setUserInteractionEnabled:YES];

}
- (IBAction)home2:(id)sender
{
    [web addSubview:btn1];
    [web addSubview:btn2];
    [web addSubview:btn3];
    [web addSubview:btn4];
    [web bringSubviewToFront:btn1];
    [web bringSubviewToFront:btn1];
    [web bringSubviewToFront:btn1];
    [web bringSubviewToFront:btn1];
    [self addButtonsToView];
    [videoBtn setHidden:YES];

    //[self performSelector:@selector(addButtonsToView) withObject:nil afterDelay:1.0];
    [pfsBtn setImage:[UIImage imageNamed:@"PFS-Button.png"] forState:UIControlStateNormal];
    [pfsBtn setImage:[UIImage imageNamed:@"PFS-Button-After-Click.png"] forState:UIControlStateHighlighted];
    NSString *path=[[NSBundle mainBundle] pathForResource:@"slide04" ofType:@"html" inDirectory:@"Bloero"];
    NSURL *url=[NSURL fileURLWithPath:path];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [web loadRequest:request];
    [conclusion setUserInteractionEnabled:YES];
    count=123;
}
- (IBAction)home3:(id)sender
{
    [pfsBtn setHidden:YES];
    [web addSubview:btn1];
    [web addSubview:btn2];
    [web addSubview:btn3];
    [web addSubview:btn4];
    [web bringSubviewToFront:btn1];
    [web bringSubviewToFront:btn1];
    [web bringSubviewToFront:btn1];
    [web bringSubviewToFront:btn1];
    [videoBtn setHidden:YES];

    NSString *path=[[NSBundle mainBundle] pathForResource:@"slide11" ofType:@"html" inDirectory:@"Bloero"];
    NSURL *url=[NSURL fileURLWithPath:path];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [web loadRequest:request];
    [conclusion setUserInteractionEnabled:YES];
    count=134253;
}
- (IBAction)home4:(id)sender
{
    [web addSubview:btn1];
    [web addSubview:btn2];
    [web addSubview:btn3];
    [web addSubview:btn4];
    [web bringSubviewToFront:btn1];
    [web bringSubviewToFront:btn1];
    [web bringSubviewToFront:btn1];
    [web bringSubviewToFront:btn1];
    [videoBtn setHidden:YES];

    [pfsBtn setHidden:YES];
    NSString *path=[[NSBundle mainBundle] pathForResource:@"slide13" ofType:@"html" inDirectory:@"Bloero"];
    NSURL *url=[NSURL fileURLWithPath:path];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [web loadRequest:request];
    count =6;
    [conclusion setUserInteractionEnabled:YES];
    [conclusion setHidden:NO];
    count=23565;
}

- (IBAction)vdoskipBtnClicked:(id)sender {
    [videoCloseBtn setHidden:NO];
    [skipVideoBtn setHidden:YES];
    
    NSLog(@"Inside Skip Home video");
    [evermilVideoPlayer stop];
    [evermilVideoPlayer.view removeFromSuperview];
    evermilVideoPlayer=nil;
    [self.view setUserInteractionEnabled:YES];
}


- (IBAction)pfsBtnClicked:(id)sender
{
    [web setHidden:YES];
    [web2 setHidden:NO];
//    [self addButtonsToNewView];
    [self performSelector:@selector(addButtonsToNewView) withObject:nil afterDelay:1.0];
    [closeBtn setImage:[UIImage imageNamed:@"Pink-Close-Btn-after-Click.png"] forState:UIControlStateNormal];
    [closeBtn setImage:[UIImage imageNamed:@"Pink-Close-Btn.png"] forState:UIControlStateHighlighted];
    [conclusion setImage:[UIImage imageNamed:@"Conclusion Btn.png"] forState:UIControlStateNormal];
    [conclusion setImage:[UIImage imageNamed:@"Conclusion Btn_1.png"] forState:UIControlStateHighlighted];
    
    [pfsBtn setHidden:YES];
    NSString *path=[[NSBundle mainBundle] pathForResource:@"slide05" ofType:@"html" inDirectory:@"Bloero"];
    NSURL *url=[NSURL fileURLWithPath:path];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [web2 loadRequest:request];
    web2.scrollView.scrollEnabled=NO;
    pfs_count=1;
}

- (IBAction)closeBtnClicked:(id)sender {
    [home setHidden:NO];
    [web addSubview:btn1];
    [web addSubview:btn2];
    [web addSubview:btn3];
    [web addSubview:btn4];
    [web bringSubviewToFront:btn1];
    [web bringSubviewToFront:btn1];
    [web bringSubviewToFront:btn1];
    [web bringSubviewToFront:btn1];

    [conclusion setHidden:NO];
    [conclusion setUserInteractionEnabled:YES];
    [web setHidden:NO];
    [web2 setHidden:YES];
    [self performSelector:@selector(addButtonsToView) withObject:nil afterDelay:1.0];
    [conclusion setUserInteractionEnabled:YES];
    [pfsBtn setImage:[UIImage imageNamed:@"PFS-Button.png"] forState:UIControlStateNormal];
    [pfsBtn setImage:[UIImage imageNamed:@"PFS-Button-After-Click.png"] forState:UIControlStateHighlighted];
    NSString *path=[[NSBundle mainBundle] pathForResource:@"slide04" ofType:@"html" inDirectory:@"Bloero"];
    NSURL *url=[NSURL fileURLWithPath:path];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [web loadRequest:request];
    count = 4;
}

- (IBAction)concluClicked:(id)sender
{
    [concluImage setHidden:NO];
    [home setHidden:YES];
    [concluCloseBtn setHidden:NO];
    concluImage.image=[UIImage imageNamed:@"Conclusion Popup.png"];
    [concluCloseBtn setImage:[UIImage imageNamed:@"Conclusion-Close-Btn.png"] forState:UIControlStateNormal];
    [concluCloseBtn setImage:[UIImage imageNamed:@"Conclusion-Close-Btn-After-Click.png"] forState:UIControlStateHighlighted];
    [self.view addSubview:concluImage];
    [concluImage addSubview:concluCloseBtn];
    [self.view bringSubviewToFront:concluImage];
    [web2 setUserInteractionEnabled:NO];
    [web setUserInteractionEnabled:NO];
}

- (IBAction)concluCloseClicked:(id)sender
{
    [concluImage setHidden:YES];
    [web2 setUserInteractionEnabled:YES];
    [conclusion setUserInteractionEnabled:YES];
    [home setHidden:NO];
    [home setHidden:NO];
    [btn1 setHidden:NO];
    [btn2 setHidden:NO];
    [btn3 setHidden:NO];
    [btn4 setHidden:NO];
    [web setUserInteractionEnabled:YES];
}

-(void)nextView
{
  

    if(count==1)
    {
        NSString *path=[[NSBundle mainBundle] pathForResource:@"slide03" ofType:@"html" inDirectory:@"Bloero"];
        NSURL *url=[NSURL fileURLWithPath:path];
        NSURLRequest *request=[NSURLRequest requestWithURL:url];
        [web loadRequest:request];
        count=5674;
    }
//    else if(count==2)
//    {
//        NSString *path=[[NSBundle mainBundle] pathForResource:@"slide04" ofType:@"html" inDirectory:@"Bloero"];
//        NSURL *url=[NSURL fileURLWithPath:path];
//        NSURLRequest *request=[NSURLRequest requestWithURL:url];
//        [web loadRequest:request];
//        count=567;
//    }
//    else  if(count==3)
//    {
//        [self performSelector:@selector(addButtonsToView) withObject:nil afterDelay:1.0];
//
//        [pfsBtn setImage:[UIImage imageNamed:@"PFS-Button.png"] forState:UIControlStateNormal];
//        [pfsBtn setImage:[UIImage imageNamed:@"PFS-Button-After-Click.png"] forState:UIControlStateHighlighted];
//        NSString *path=[[NSBundle mainBundle] pathForResource:@"slide04" ofType:@"html" inDirectory:@"Bloero"];
//        NSURL *url=[NSURL fileURLWithPath:path];
//        NSURLRequest *request=[NSURLRequest requestWithURL:url];
//        [web loadRequest:request];
//        count = 4;
//    }
//    else  if(count==4)
//    {
//        NSString *path=[[NSBundle mainBundle] pathForResource:@"slide08" ofType:@"html" inDirectory:@"Bloero"];
//        NSURL *url=[NSURL fileURLWithPath:path];
//        NSURLRequest *request=[NSURLRequest requestWithURL:url];
//        [web loadRequest:request];
//        count = 5;
//    }else  if(count==5)
//    {
//        NSString *path=[[NSBundle mainBundle] pathForResource:@"slide09" ofType:@"html" inDirectory:@"Bloero"];
//        NSURL *url=[NSURL fileURLWithPath:path];
//        NSURLRequest *request=[NSURLRequest requestWithURL:url];
//        [web loadRequest:request];
//        count =6;
//    }
}

-(void)prevView
{

    if (count==5674) {
            NSString *path=[[NSBundle mainBundle] pathForResource:@"slide02" ofType:@"html" inDirectory:@"Bloero"];
            NSURL *url=[NSURL fileURLWithPath:path];
            NSURLRequest *request=[NSURLRequest requestWithURL:url];
            [web loadRequest:request];
            count=1;
    }
   
//   if(count==6)
//    {
//        NSString *path=[[NSBundle mainBundle] pathForResource:@"slide08" ofType:@"html" inDirectory:@"Bloero"];
//        NSURL *url=[NSURL fileURLWithPath:path];
//        NSURLRequest *request=[NSURLRequest requestWithURL:url];
//        [web loadRequest:request];
//        count = 5;
//    }
//    else  if(count==5)
//    {
//        [self performSelector:@selector(addButtonsToView) withObject:nil afterDelay:1.0];
//
//        [pfsBtn setImage:[UIImage imageNamed:@"PFS-Button.png"] forState:UIControlStateNormal];
//        [pfsBtn setImage:[UIImage imageNamed:@"PFS-Button-After-Click.png"] forState:UIControlStateHighlighted];
//        NSString *path=[[NSBundle mainBundle] pathForResource:@"slide04" ofType:@"html" inDirectory:@"Bloero"];
//        NSURL *url=[NSURL fileURLWithPath:path];
//        NSURLRequest *request=[NSURLRequest requestWithURL:url];
//        [web loadRequest:request];
//        count = 4;
//    }
//    else if(count==4)
//    {
//        NSString *path=[[NSBundle mainBundle] pathForResource:@"slide03" ofType:@"html" inDirectory:@"Bloero"];
//        NSURL *url=[NSURL fileURLWithPath:path];
//        NSURLRequest *request=[NSURLRequest requestWithURL:url];
//        [web loadRequest:request];
//        count =3;
//    }
//    else if(count==3)
//    {
//        NSString *path=[[NSBundle mainBundle] pathForResource:@"slide02" ofType:@"html" inDirectory:@"Bloero"];
//        NSURL *url=[NSURL fileURLWithPath:path];
//        NSURLRequest *request=[NSURLRequest requestWithURL:url];
//        [web loadRequest:request];
//        count = 2;
//    }
//    else  if(count==2)
//    {
//        NSString *path=[[NSBundle mainBundle] pathForResource:@"slide01" ofType:@"html" inDirectory:@"Bloero"];
//        NSURL *url=[NSURL fileURLWithPath:path];
//        NSURLRequest *request=[NSURLRequest requestWithURL:url];
//        [web loadRequest:request];
//        count = 1;
//    }
}

-(void)pfsNextSlide
{
    [closeBtn setHidden:YES];
   [closeBtn setImage:[UIImage imageNamed:@"Pink-Close-Btn-after-Click.png"] forState:UIControlStateNormal];
    [closeBtn setImage:[UIImage imageNamed:@"Pink-Close-Btn.png"] forState:UIControlStateHighlighted];    [conclusion setImage:[UIImage imageNamed:@"Conclusion Btn.png"] forState:UIControlStateNormal];
    [conclusion setImage:[UIImage imageNamed:@"Conclusion Btn_1.png"] forState:UIControlStateHighlighted];

    if(pfs_count==1)
    {
        [self performSelector:@selector(addButtonsToNewView) withObject:nil afterDelay:1.0];

        NSString *path=[[NSBundle mainBundle] pathForResource:@"slide06" ofType:@"html" inDirectory:@"Bloero"];
        NSURL *url=[NSURL fileURLWithPath:path];
        NSURLRequest *request=[NSURLRequest requestWithURL:url];
        [web2 loadRequest:request];
        pfs_count = 2;
    }else  if(pfs_count==2)
    {
        [self performSelector:@selector(addButtonsToNewView) withObject:nil afterDelay:1.0];

        NSString *path=[[NSBundle mainBundle] pathForResource:@"slide07" ofType:@"html" inDirectory:@"Bloero"];
        NSURL *url=[NSURL fileURLWithPath:path];
        NSURLRequest *request=[NSURLRequest requestWithURL:url];
        [web2 loadRequest:request];
        pfs_count = 3;
        
    }
}

-(void)pfsPrevSlide
{
    [closeBtn setHidden:YES];
   [closeBtn setImage:[UIImage imageNamed:@"Pink-Close-Btn-after-Click.png"] forState:UIControlStateNormal];
    [closeBtn setImage:[UIImage imageNamed:@"Pink-Close-Btn.png"] forState:UIControlStateHighlighted];    [conclusion setImage:[UIImage imageNamed:@"Conclusion Btn.png"] forState:UIControlStateNormal];
    [conclusion setImage:[UIImage imageNamed:@"Conclusion Btn_1.png"] forState:UIControlStateHighlighted];
    
    if(pfs_count==3)
    {
        [self performSelector:@selector(addButtonsToNewView) withObject:nil afterDelay:1.0];

        NSString *path=[[NSBundle mainBundle] pathForResource:@"slide06" ofType:@"html" inDirectory:@"Bloero"];
        NSURL *url=[NSURL fileURLWithPath:path];
        NSURLRequest *request=[NSURLRequest requestWithURL:url];
        [web2 loadRequest:request];
        pfs_count =2;
    }
    else if(pfs_count==2)
    {
        [self performSelector:@selector(addButtonsToNewView) withObject:nil afterDelay:1.0];

        NSString *path=[[NSBundle mainBundle] pathForResource:@"slide05" ofType:@"html" inDirectory:@"Bloero"];
        NSURL *url=[NSURL fileURLWithPath:path];
        NSURLRequest *request=[NSURLRequest requestWithURL:url];
        [web2 loadRequest:request];
        pfs_count = 1;
    }
    
}

-(void)addButtonsToView
{
    [pfsBtn setHidden:NO];
    [web addSubview:pfsBtn];
    [conclusion setUserInteractionEnabled:YES];

}

-(void)addButtonsToNewView
{
    [closeBtn setHidden:NO];
    [conclusion setHidden:NO];
    [web2 addSubview:btn1];
    [web2 addSubview:btn2];
    [web2 addSubview:btn3];
    [web2 addSubview:btn4];
    [conclusion setUserInteractionEnabled:YES];
    [web2 addSubview:conclusion];
    [web2 addSubview:closeBtn];
}

- (IBAction)videoBtnPressed:(id)sender
{
    [home setHidden:YES];
    [videoCloseBtn setHidden:NO];
    [conclusion setHidden:YES];
    [videoImageView setHidden:NO];
    [engVideoBtn setHidden:NO];
    [hindivideoBtn setHidden:NO];
    [self.web addSubview:videoImageView];
    [self.web addSubview:engVideoBtn];
    [self.web addSubview:hindivideoBtn];
    [self.web addSubview:videoCloseBtn];
    [videoImageView bringSubviewToFront:engVideoBtn];
    [videoImageView bringSubviewToFront:hindivideoBtn];
//    [videoImageView bringSubviewToFront:videoCloseBtn];

}

- (IBAction)hindiVdoClicked:(id)sender
{
    
    [self initializePlayer:@"evermil_hindi.mp4"];
}

- (IBAction)englishVdoClicked:(id)sender
{
    [self initializePlayer:@"Evermil_English.mp4"];
}

#pragma  mark Video Player
-(void)initializePlayer:(NSString *)str
{
    [skipVideoBtn setHidden:NO];
    [self.view addSubview:skipVideoBtn];
    NSString *str_url=[[NSBundle mainBundle]pathForResource:str ofType:nil];
    evermilVideoPlayer=[[MPMoviePlayerController alloc]initWithContentURL:[NSURL fileURLWithPath:str_url]];
    evermilVideoPlayer.controlStyle=MPMovieControlStyleDefault;
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(skipButtonClicked:) name:MPMoviePlayerPlaybackDidFinishNotification object:evermilVideoPlayer];
    evermilVideoPlayer.view.frame=CGRectMake(0,0,1024,748);
    [self.view setUserInteractionEnabled:YES];
    [self.view addSubview:evermilVideoPlayer.view];
    [videoBtn setHidden:YES];
    [evermilVideoPlayer play];
}
- (void)skipButtonClicked:(id)sender
{
    //[skipButton setHidden:YES];
    [videoCloseBtn setHidden:NO];
    [skipVideoBtn setHidden:YES];

    NSLog(@"Inside Skip Home video");
    [evermilVideoPlayer stop];
    [evermilVideoPlayer.view removeFromSuperview];
    evermilVideoPlayer=nil;
    [self.view setUserInteractionEnabled:YES];
}

- (IBAction)videoClosePressed:(id)sender
{
    [home setHidden:NO];
    [videoCloseBtn setHidden:YES];
    [conclusion setHidden:NO];
    [videoImageView setHidden:YES];
    [engVideoBtn setHidden:YES];
    [hindivideoBtn setHidden:YES];
    [videoBtn setHidden:NO];
}

- (IBAction)closevdoPressed:(id)sender
{
    [videoCloseBtn setHidden:NO];
    
    NSLog(@"Inside Skip Home video");
    [evermilVideoPlayer stop];
    [evermilVideoPlayer.view removeFromSuperview];
    evermilVideoPlayer=nil;
    [self.view setUserInteractionEnabled:YES];
}

@end
