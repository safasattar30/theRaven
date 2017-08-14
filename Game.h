//
//  Game.h
//  TheRaven
//
//  Created by MMstudent on 11/3/14.
//  Copyright (c) 2014 Safa Sattar. All rights reserved.
//

#import <UIKit/UIKit.h>

int CannonMovement;
int BulletMovement;
int PlumeMovement;
int PlumeMovementX;
int BulletsOnScreen;
int verticalSpeed;

int randNum;
int randOpp;
int randPlumeX;
int PlumesHit;
BOOL Plume1Hit;
BOOL Plume2Hit;
BOOL Plume3Hit;
BOOL Plume4Hit;
BOOL Plume5Hit;
BOOL Plume6Hit;
BOOL Plume7Hit;
BOOL Plume8Hit;
BOOL Plume9Hit;
BOOL Plume10Hit;
BOOL Plume11Hit;
BOOL Plume12Hit;
BOOL Plume13Hit;
BOOL FallingPlumeHit;

@interface Game : UIViewController{
    IBOutlet UIButton *Start;
    IBOutlet UIButton *StartHard;
    IBOutlet UIButton *Fire;
    IBOutlet UIButton *TryAgain;
    IBOutlet UIImageView *Cannon;
    IBOutlet UIImageView *Bullet;
    
    IBOutlet UIImageView *Plume1;
    IBOutlet UIImageView *Plume2;
    IBOutlet UIImageView *Plume3;
    IBOutlet UIImageView *Plume4;
    IBOutlet UIImageView *Plume5;
    IBOutlet UIImageView *Plume6;
    IBOutlet UIImageView *Plume7;
    IBOutlet UIImageView *Plume8;
    IBOutlet UIImageView *Plume9;
    IBOutlet UIImageView *Plume10;
    IBOutlet UIImageView *Plume11;
    IBOutlet UIImageView *Plume12;
    IBOutlet UIImageView *Plume13;
    
    IBOutlet UIImageView *FallingPlume1;
    IBOutlet UIImageView *FallingPlume2;
    IBOutlet UIImageView *FallingPlume3;
    IBOutlet UIImageView *FallingPlume4;
    
    IBOutlet UILabel *winOrLose;
    IBOutlet UILabel *score;
    IBOutlet UILabel *help;
    
    NSTimer *MovementTimer;
    NSTimer *PlumeMovementTimer;
}

-(IBAction)Start:(id)sender;
-(IBAction)StartHard:(id)sender;
-(IBAction)Fire:(id)sender;
-(void)Movement;
-(void)PlumeMovement;
-(void)GameOver;

@end
