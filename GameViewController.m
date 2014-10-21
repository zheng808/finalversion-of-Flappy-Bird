//
//  GameViewController.m
//  Flappy bird
//
//  Created by lizheng on 2014-04-30.
//  Copyright (c) 2014 lizheng. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController

-(IBAction)StartGame:(id)sender{
    StartGame.hidden=YES;
    BirdMovement=[NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(BirdMoving)
                                                userInfo:nil repeats:YES];
}
-(void)BirdMoving{
    
    Bird.center=CGPointMake(Bird.center.x,Bird.center.y-BirdFlight);
    
    BirdFlight=BirdFlight-5;
    if(BirdFlight<-15){
    BirdFlight=-15;
    }
    if(BirdFlight<0){
        Bird.image = [UIImage imageNamed:@""];
    }
    if(BirdFlight>0){
        Bird.image=[UIImage imageNamed:@""];
    }
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    BirdFlight=30;
    
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
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
