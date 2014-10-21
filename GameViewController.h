//
//  GameViewController.h
//  Flappy bird
//
//  Game.h
//  finalversion of Flappy Bird
//
//  Created by lizheng on 2014-05-01.
//  Copyright (c) 2014 lizheng. All rights reserved.
//

#import <UIKit/UIKit.h>
int BirdFlight;
int RandomTopTunnelPosition;
int RandomBottomTunnelPosition;
int ScoreNumber;
NSInteger HighScoreNumber;
@interface Game : UIViewController //class 

{
    IBOutlet UIImageView *Bird;
    IBOutlet UIButton *StartGame;
    IBOutlet UIImageView *TunnelTop;
    IBOutlet UIImageView *TunnelBottom;
    IBOutlet UIImageView *Top;
    IBOutlet UIImageView *Bottom;
    IBOutlet UIButton *Exist;
    IBOutlet UILabel *ScoreLabel;
    

    NSTimer *TunnelMovement;
    NSTimer *BirdMovement;
    
}
-(IBAction)StartGame:(id)sender; //declaretion method
-(void)BirdMoving;
-(void)TunnelMoving;
-(void)PlaceTunnel;
-(void)Score;
-(void)GameOver;
@end

