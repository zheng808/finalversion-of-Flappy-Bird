//
//  Game.m
//  finalversion of Flappy Bird
//
//  Created by lizheng on 2014-05-01.
//  Copyright (c) 2014 lizheng. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game
-(IBAction)StartGame:(id)sender{
    StartGame.hidden=YES;
    TunnelBottom.hidden=NO;
    TunnelTop.hidden=NO;
    BirdMovement=[NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(BirdMoving) userInfo:nil repeats:YES];
    
    [self PlaceTunnel]; //call placeTunnel
    TunnelMovement=[NSTimer scheduledTimerWithTimeInterval:0.03 target:self selector:@selector(TunnelMoving) userInfo:nil repeats:YES];
}
-(void)PlaceTunnel{
    RandomTopTunnelPosition =arc4random()%350;  //random number between 0 to 350
    RandomTopTunnelPosition=RandomTopTunnelPosition-228;
    RandomBottomTunnelPosition=RandomTopTunnelPosition+700;
    TunnelTop.center=CGPointMake(340,RandomTopTunnelPosition);
    TunnelBottom.center=CGPointMake(340,RandomBottomTunnelPosition);
}

-(void)TunnelMoving{
    TunnelTop.center=CGPointMake(TunnelTop.center.x-1,TunnelTop.center.y);
    TunnelBottom.center=CGPointMake(TunnelBottom.center.x-1,TunnelBottom.center.y);
    
    if(TunnelTop.center.x<-56){
        [self PlaceTunnel];      //[self methond] means to call a method
    
    }
    if(TunnelTop.center.x==25){
        [self Score];
    }
    if(CGRectIntersectsRect(Bird.frame,TunnelTop.frame)){
        [self GameOver];
    }//for if
    if(CGRectIntersectsRect(Bird.frame,TunnelBottom.frame)){
        [self GameOver];
    }
    if(CGRectIntersectsRect(Bird.frame,Bottom.frame)){
        [self GameOver];
    }
    if(CGRectIntersectsRect(Bird.frame,Top.frame)){
        [self GameOver];
    }
    }//
-(void)Score{
    ScoreNumber=ScoreNumber+1;
    ScoreLabel.text=[NSString stringWithFormat:@"%i",ScoreNumber];
    
}
//
-(void)GameOver{
[[NSUserDefaults standardUserDefaults] setInteger:ScoreNumber forKey:@"HighScoresaved"];
    [BirdMovement invalidate];
    [TunnelMovement invalidate];
    Exist.hidden=NO;
    Bird.hidden=YES;
    TunnelTop.hidden=YES;
    TunnelBottom.hidden=YES;
}
-(void)BirdMoving{
    
    Bird.center=CGPointMake(Bird.center.x,Bird.center.y-BirdFlight);
    
    BirdFlight=BirdFlight-5;
    if(BirdFlight<-15){
        BirdFlight=-15;
    }
    if(BirdFlight>0){
        Bird.image=[UIImage imageNamed:@"Birdup.png"];
    }
    if(BirdFlight<0){
        Bird.image=[UIImage imageNamed:@"Birddown.png"];
    }
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    BirdFlight=30;  //initial value of BirdFlight
}



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
    Top.hidden=YES;
    Bottom.hidden=YES;
    TunnelTop.hidden=YES;        //TunnelTop does not show up
    TunnelBottom.hidden=YES;     //Bottom does not show up
    Exist.hidden=YES;           //Exist buttom does not show up
    ScoreNumber=0;
HighScoreNumber=[[NSUserDefaults standardUserDefaults] integerForKey:@"HighScoreSaved"];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
