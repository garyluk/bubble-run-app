//
//  GameViewController.h
//  bubble run
//
//  Created by sophie su on 2015-07-16.
//  Copyright (c) 2015 Gary Luk. All rights reserved.
//

#import <UIKit/UIKit.h>

int CircleAppearanceRate;
int CountNumber;
NSInteger HighScoreNumber;

@interface GameViewController : UIViewController

{
    
    IBOutlet UIButton *StartGameButton;
    IBOutlet UIImageView *Circle1;
    IBOutlet UILabel *TimerDisplay;
    IBOutlet UIButton *PlayAgain;
    IBOutlet UIButton *MainMenu;
    
    
    UIImageView *Pointblack;
    CGPoint startPoint;
    
    NSTimer *Circle1Appearance;
    NSTimer *Timer;
    

}

-(IBAction)startgamemethod:(id)sender;
-(void)EndGame;
-(void)Circle1Appearing;
-(void)Circle1Growth;
-(void)TimerCount;
-(void)Collision;


@property (nonatomic, retain) IBOutlet UIImageView *Circle1;
@property (nonatomic, retain) IBOutlet UIImageView *Pointblack;
@property CGPoint startPoint;



@end
