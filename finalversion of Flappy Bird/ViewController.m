//
//  ViewController.m
//  finalversion of Flappy Bird
//
//  Created by lizheng on 2014-05-01.
//  Copyright (c) 2014 lizheng. All rights reserved.
//

//
//  ViewController.m
//  finalversion of Flappy Bird
//
//  Created by lizheng on 2014-05-01.
//  Copyright (c) 2014 lizheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
HighScoreNumber=[[NSUserDefaults standardUserDefaults] integerForKey:@"HighScoreSaved"];
HighScore.text=[NSString stringWithFormat:@"High Score %li",(long)HighScoreNumber];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
