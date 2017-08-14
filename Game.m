//The Raven
//

//  Game.m

//  TheRaven

//

//  Created by MMstudent on 11/3/14.

//  Copyright (c) 2014 Safa Sattar. All rights reserved.

//



#import "Game.h"
#import <AVFoundation/AVFoundation.h>

@interface Game (){
    AVAudioPlayer *_audioPlayer;
}
@end
@implementation Game

-(void)plumeHit{
    PlumesHit = PlumesHit + 1;
    BulletsOnScreen = 0;
    Bullet.hidden = YES;
    BulletMovement = 0;
    
    score.text = [NSString stringWithFormat:@"%d",PlumesHit];
    
    if(PlumesHit==13){
        
        winOrLose.hidden = NO;
        winOrLose.text = [NSString stringWithFormat:@"You Win!"];
        
        FallingPlume1.hidden = YES;
        FallingPlume2.hidden = YES;
        FallingPlume3.hidden = YES;
        FallingPlume4.hidden = YES;
        
        Bullet.hidden=YES;
        Cannon.hidden=YES;
        Fire.hidden=YES;
        
        TryAgain.hidden=NO;
        
        [MovementTimer invalidate];
        
    }
    
}



-(void)GameOver{
    
    winOrLose.hidden=NO;
    
    winOrLose.text = [NSString stringWithFormat:@"You Lose!"];
    
    Plume1.hidden = YES;
    
    Plume2.hidden = YES;
    
    Plume3.hidden = YES;
    
    Plume4.hidden = YES;
    
    Plume5.hidden = YES;
    
    Plume6.hidden = YES;
    
    Plume7.hidden = YES;
    
    Plume8.hidden = YES;
    
    Plume9.hidden = YES;
    
    Plume10.hidden = YES;
    
    Plume11.hidden = YES;
    
    Plume12.hidden = YES;
    
    Plume13.hidden = YES;
    
    FallingPlume1.hidden = YES;
    
    FallingPlume2.hidden = YES;
    
    FallingPlume3.hidden = YES;
    
    FallingPlume4.hidden = YES;
    
    
    
    Bullet.hidden=YES;
    
    Cannon.hidden=YES;
    
    Fire.hidden=YES;
    
    TryAgain.hidden=NO;
    
    [MovementTimer invalidate];
    
}



-(void)PlumeCollision{
    
    if((CGRectIntersectsRect(FallingPlume1.frame, Bullet.frame))){
        
        [self GameOver];
        
    }
    
    if((CGRectIntersectsRect(FallingPlume2.frame, Bullet.frame))){
        
        [self GameOver];
        
    }
    
    if((CGRectIntersectsRect(FallingPlume3.frame, Bullet.frame))){
        
        [self GameOver];
        
    }
    
    if((CGRectIntersectsRect(FallingPlume4.frame, Bullet.frame))){
        
        [self GameOver];
        
    }
    
}



-(void)Collision{
    
    if((CGRectIntersectsRect(Bullet.frame, Plume1.frame)) && (Plume1Hit==NO)){
        
        Plume1Hit=YES;
        
        Plume1.hidden=YES;
        
        Bullet.center = CGPointMake(Bullet.center.x, 546);
        
        [self plumeHit];
        
    }
    
    if((CGRectIntersectsRect(Bullet.frame, Plume2.frame)) && (Plume2Hit==NO)){
        
        Plume2Hit=YES;
        
        Plume2.hidden=YES;
        
        Bullet.center = CGPointMake(Bullet.center.x, 546);
        
        [self plumeHit];
        
    }
    
    if((CGRectIntersectsRect(Bullet.frame, Plume3.frame)) && (Plume3Hit==NO)){
        
        Plume3Hit=YES;
        
        Plume3.hidden=YES;
        
        Bullet.center = CGPointMake(Bullet.center.x, 546);
        
        [self plumeHit];
        
    }
    
    if((CGRectIntersectsRect(Bullet.frame, Plume4.frame)) && (Plume4Hit==NO)){
        
        Plume4Hit=YES;
        
        Plume4.hidden=YES;
        
        Bullet.center = CGPointMake(Bullet.center.x, 546);
        
        [self plumeHit];
        
    }
    
    if((CGRectIntersectsRect(Bullet.frame, Plume5.frame)) && (Plume5Hit==NO)){
        
        Plume5Hit=YES;
        
        Plume5.hidden=YES;
        
        Bullet.center = CGPointMake(Bullet.center.x, 546);
        
        [self plumeHit];
        
    }
    
    if((CGRectIntersectsRect(Bullet.frame, Plume6.frame)) && (Plume6Hit==NO)){
        
        Plume6Hit=YES;
        
        Plume6.hidden=YES;
        
        Bullet.center = CGPointMake(Bullet.center.x, 546);
        
        [self plumeHit];
        
    }
    
    if((CGRectIntersectsRect(Bullet.frame, Plume7.frame)) && (Plume7Hit==NO)){
        
        Plume7Hit=YES;
        
        Plume7.hidden=YES;
        
        Bullet.center = CGPointMake(Bullet.center.x, 546);
        
        [self plumeHit];
        
    }
    
    if((CGRectIntersectsRect(Bullet.frame, Plume8.frame)) && (Plume8Hit==NO)){
        
        Plume8Hit=YES;
        
        Plume8.hidden=YES;
        
        Bullet.center = CGPointMake(Bullet.center.x, 546);
        
        [self plumeHit];
        
    }
    
    if((CGRectIntersectsRect(Bullet.frame, Plume9.frame)) && (Plume9Hit==NO)){
        
        Plume9Hit=YES;
        
        Plume9.hidden=YES;
        
        Bullet.center = CGPointMake(Bullet.center.x, 546);
        
        [self plumeHit];
        
    }
    
    if((CGRectIntersectsRect(Bullet.frame, Plume10.frame)) && (Plume10Hit==NO)){
        
        Plume10Hit=YES;
        
        Plume10.hidden=YES;
        
        Bullet.center = CGPointMake(Bullet.center.x, 546);
        
        [self plumeHit];
        
    }
    
    if((CGRectIntersectsRect(Bullet.frame, Plume11.frame)) && (Plume11Hit==NO)){
        
        Plume11Hit=YES;
        
        Plume11.hidden=YES;
        
        Bullet.center = CGPointMake(Bullet.center.x, 546);
        
        [self plumeHit];
        
    }
    
    if((CGRectIntersectsRect(Bullet.frame, Plume12.frame)) && (Plume12Hit==NO)){
        
        Plume12Hit=YES;
        
        Plume12.hidden=YES;
        
        Bullet.center = CGPointMake(Bullet.center.x, 546);
        
        [self plumeHit];
        
    }
    
    if((CGRectIntersectsRect(Bullet.frame, Plume13.frame)) && (Plume13Hit==NO)){
        
        Plume13Hit=YES;
        
        Plume13.hidden=YES;
        
        Bullet.center = CGPointMake(Bullet.center.x, 546);
        
        [self plumeHit];
        
    }
    
    
    
}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch *touch = [touches anyObject];
    
    CGPoint point = [touch locationInView:self.view];
    
    
    
    if(point.x<160){
        
        if(Cannon.center.x > 30){
            
            CannonMovement=-7;
            
        }
        
    }
    
    else{
        
        if(Cannon.center.x < 285){
            
            CannonMovement=7;
            
        }
        
    }
    
}



-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    CannonMovement=0;
    
}



-(void)featherMove:(NSInteger)inVal{
    
    Plume1.center = CGPointMake(Plume1.center.x+inVal, Plume1.center.y);
    
    Plume2.center = CGPointMake(Plume2.center.x-inVal, Plume2.center.y);
    
    Plume3.center = CGPointMake(Plume3.center.x+inVal, Plume3.center.y);
    
    Plume4.center = CGPointMake(Plume4.center.x+inVal, Plume4.center.y);
    
    Plume5.center = CGPointMake(Plume5.center.x+inVal, Plume5.center.y);
    
    Plume6.center = CGPointMake(Plume6.center.x-inVal, Plume6.center.y);
    
    Plume7.center = CGPointMake(Plume7.center.x+inVal, Plume7.center.y);
    
    Plume8.center = CGPointMake(Plume8.center.x+inVal, Plume8.center.y);
    
    Plume9.center = CGPointMake(Plume9.center.x+inVal, Plume9.center.y);
    
    Plume10.center = CGPointMake(Plume10.center.x+inVal, Plume10.center.y);
    
    Plume11.center = CGPointMake(Plume11.center.x-inVal, Plume11.center.y);
    
    Plume12.center = CGPointMake(Plume12.center.x+inVal, Plume12.center.y);
    
    Plume13.center = CGPointMake(Plume13.center.x+inVal, Plume13.center.y);
    
}



-(void)Movement{
    
    [self Collision];
    
    
    
    Cannon.center = CGPointMake(Cannon.center.x + CannonMovement, Cannon.center.y);
    
    Bullet.center = CGPointMake(Bullet.center.x, Bullet.center.y-BulletMovement);
    
    
    
    randOpp=randOpp+1;
    
    
    
    //randPlumeX=(rand()%10+1)/2;
    
    randPlumeX=2;
    
    
    
    if(randOpp<20){
        
        [self featherMove: randPlumeX];
        
    }
    
    else if(randOpp>=20 && randOpp<40){
        
        [self featherMove: -randPlumeX];
        
    }else{
        
        randOpp=0;
        
    }
    
    
    
    if(Bullet.center.y<0){
        
        Bullet.hidden=YES;
        
        BulletsOnScreen=0;
        
        BulletMovement = 0;
        
    }
    
}



-(void)PlumeMovement{
    
    [self PlumeCollision];
    
    
    
    randNum=rand()%10+1;
    
    if(randNum%2==0){
        
        PlumeMovementX=4;
        
    }
    
    else{
        
        PlumeMovementX=-4;
        
    }
    
    if(randNum<3){
        
        FallingPlume1.center = CGPointMake(FallingPlume1.center.x+PlumeMovementX, FallingPlume1.center.y+PlumeMovement);
        
    }
    
    else if(randNum<6){
        
        FallingPlume2.center = CGPointMake(FallingPlume2.center.x+PlumeMovementX, FallingPlume2.center.y+PlumeMovement);
        
    }
    
    else if(randNum<9){
        
        FallingPlume3.center = CGPointMake(FallingPlume3.center.x+PlumeMovementX, FallingPlume3.center.y+PlumeMovement);
        
    }
    
    else{
        
        FallingPlume4.center = CGPointMake(FallingPlume4.center.x+PlumeMovementX, FallingPlume4.center.y+PlumeMovement);
        
    }
    
    
    
    PlumeMovement = PlumeMovement + verticalSpeed;
    
    PlumeMovementX=0;
    
    
    
    if(FallingPlume1.center.y>450){
        
        PlumeMovement = 0;
        
        FallingPlume1.center = CGPointMake(FallingPlume1.center.x, 0);
        
    }
    
    
    
    if(FallingPlume2.center.y>420){
        
        PlumeMovement = 0;
        
        FallingPlume2.center = CGPointMake(FallingPlume2.center.x, 0);
        
    }
    
    
    
    if(FallingPlume3.center.y>420){
        
        PlumeMovement = 0;
        
        FallingPlume3.center = CGPointMake(FallingPlume3.center.x, 0);
        
    }
    
    
    
    if(FallingPlume4.center.y>450){
        
        PlumeMovement = 0;
        
        FallingPlume4.center = CGPointMake(FallingPlume4.center.x, 0);
        
    }
    
}


-(IBAction)StartHard:(id)sender{
    
    Start.hidden= YES;
    StartHard.hidden = YES;
    help.hidden=YES;
    
    Fire.hidden= NO;
    score.hidden = NO;
    
    verticalSpeed = 6;
    
    MovementTimer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(Movement) userInfo:nil repeats:YES];
    
    PlumeMovementTimer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(PlumeMovement) userInfo:nil repeats:YES];
    
    Plume1.hidden = NO;
    
    Plume2.hidden = NO;
    
    Plume3.hidden = NO;
    
    Plume4.hidden = NO;
    
    Plume5.hidden = NO;
    
    Plume6.hidden = NO;
    
    Plume7.hidden = NO;
    
    Plume8.hidden = NO;
    
    Plume9.hidden = NO;
    
    Plume10.hidden = NO;
    
    Plume11.hidden = NO;
    
    Plume12.hidden = NO;
    
    Plume13.hidden = NO;
    
    FallingPlume1.hidden = NO;
    
    FallingPlume2.hidden = NO;
    
    FallingPlume3.hidden = NO;
    
    FallingPlume4.hidden = NO;
    
}


-(IBAction)Start:(id)sender{
    
    Start.hidden= YES;
    StartHard.hidden = YES;
    help.hidden=YES;
    
    Fire.hidden= NO;
    score.hidden = NO;
    
    verticalSpeed=3;
    
    MovementTimer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(Movement) userInfo:nil repeats:YES];
    
    PlumeMovementTimer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(PlumeMovement) userInfo:nil repeats:YES];
    
    Plume1.hidden = NO;
    
    Plume2.hidden = NO;
    
    Plume3.hidden = NO;
    
    Plume4.hidden = NO;
    
    Plume5.hidden = NO;
    
    Plume6.hidden = NO;
    
    Plume7.hidden = NO;
    
    Plume8.hidden = NO;
    
    Plume9.hidden = NO;
    
    Plume10.hidden = NO;
    
    Plume11.hidden = NO;
    
    Plume12.hidden = NO;
    
    Plume13.hidden = NO;
    
    FallingPlume1.hidden = NO;
    
    FallingPlume2.hidden = NO;
    
    FallingPlume3.hidden = NO;
    
    FallingPlume4.hidden = NO;
    
}



-(IBAction)Fire:(id)sender{
    
    if(BulletsOnScreen==0){
        
        Bullet.hidden=NO;
        
        Bullet.center=CGPointMake(Cannon.center.x, 437);
        
        BulletsOnScreen=BulletsOnScreen+1;
        
        BulletMovement=7;
        
    }
    
}
- (void)viewDidLoad
{
    PlumesHit = 0;
    randOpp = 0;
    verticalSpeed=0;
    
    Bullet.hidden = YES;
    Fire.hidden = YES;
    score.hidden = YES;
    TryAgain.hidden = YES;
    
    Plume1Hit = NO;
    Plume2Hit = NO;
    Plume3Hit = NO;
    Plume4Hit = NO;
    Plume5Hit = NO;
    Plume6Hit = NO;
    Plume7Hit = NO;
    Plume8Hit = NO;
    Plume9Hit = NO;
    Plume10Hit = NO;
    Plume11Hit = NO;
    Plume12Hit = NO;
    Plume13Hit = NO;
    
    Plume1.hidden = YES;
    Plume2.hidden = YES;
    Plume3.hidden = YES;
    Plume4.hidden = YES;
    Plume5.hidden = YES;
    Plume6.hidden = YES;
    Plume7.hidden = YES;
    Plume8.hidden = YES;
    Plume9.hidden = YES;
    Plume10.hidden = YES;
    Plume11.hidden = YES;
    Plume12.hidden = YES;
    Plume13.hidden = YES;
    
    FallingPlume1.hidden = YES;
    FallingPlume2.hidden = YES;
    FallingPlume3.hidden = YES;
    FallingPlume4.hidden = YES;
    
    winOrLose.hidden = YES;
    
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    // Construct URL to sound file
    NSString *path = [NSString stringWithFormat:@"%@/ghost.mp3", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    // Create audio player object and initialize with URL to sound
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
    [_audioPlayer play];
    _audioPlayer.numberOfLoops = -1;
    _audioPlayer.currentTime = 0;
    _audioPlayer.volume = 1.0;
}



- (void)didReceiveMemoryWarning

{
    
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
    
}

@end