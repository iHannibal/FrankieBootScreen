//
//  FrankieSplashViewController.m
//  FrankieBootScreen
//
//  Created by Frankenstein Yang on 2/11/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "FrankieSplashViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface FrankieSplashViewController () {
    
    MPMoviePlayerViewController *playerViewController;

}
@end

@implementation FrankieSplashViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self playVideo];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)playVideo {

    NSString *urlString = [[NSBundle mainBundle] pathForResource:@"Awolnation-Sail" ofType:@"mp4"];
    NSURL *mediaURL = [NSURL fileURLWithPath:urlString];
    playerViewController = [[MPMoviePlayerViewController alloc] initWithContentURL:mediaURL];
    playerViewController.moviePlayer.repeatMode = MPMovieRepeatModeOne;
    // 登录状态判断
    // 
    playerViewController.view.frame = self.view.frame;
    [self.view addSubview:playerViewController.view];
    [self.view sendSubviewToBack:playerViewController.view];
    playerViewController.moviePlayer.controlStyle = MPMovieControlStyleNone;
    playerViewController.moviePlayer.shouldAutoplay = YES;
    [playerViewController.moviePlayer setFullscreen:YES animated:NO];
    playerViewController.moviePlayer.scalingMode = MPMovieScalingModeAspectFill;
    [playerViewController.moviePlayer play];
    
}

- (IBAction)login:(id)sender {
    
//    [FrankieProcessManager shareManager]
    
}


@end
