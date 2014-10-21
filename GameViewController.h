//
//  GameViewController.h
//  Flappy bird
//
//  Created by lizheng on 2014-04-30.
//  Copyright (c) 2014 lizheng. All rights reserved.
//

#import <UIKit/UIKit.h>


int BirdFlight;
@interface GameViewController : UIViewController
{
    IBOutlet UIView *Bird;
    IBOutlet UIButton *StartGame;
    NSTimer *BirdMovement;
    
}
-(IBAction)StartGame:(id)sender;
-(void)BirdMoving;

@end
