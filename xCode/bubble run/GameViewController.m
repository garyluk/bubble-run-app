//
//  GameViewController.m
//  bubble run
//
//  Created by sophie su on 2015-07-16.
//  Copyright (c) 2015 Gary Luk. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController

-(IBAction)StartGame:(id)sender{
    [self startGame];
    StartGame.hidden = YES;
    Circle1.hidden = NO;
}

-(IBAction)PlayAgain:(id)sender{
    
    [self startGame];
    
}

-(void)EndGame{
    
    if (CountNumber > HighScoreNumber) {
        
        [[NSUserDefaults standardUserDefaults] setInteger:CountNumber forKey:@"HighScoreSaved"];
        
    }
    
    PlayAgain.hidden = NO;
    MainMenu.hidden = NO;
    Pointblack.hidden = YES;
    Circle1.hidden = YES;
    
    [Timer invalidate];
    [Circle1Appearance invalidate];
    
    
}

-(void)startGame{
    
    PlayAgain.hidden = YES;
    StartGame.hidden = YES;
    Circle1.hidden = NO;
    
    
    Timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(TimerCount) userInfo:nil repeats:YES];
    
    
    Circle1Appearance = [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(Circle1Appearing) userInfo:nil  repeats:YES];
    
    // Rate of Circle1 appearance
    
    
    if (CGRectIntersectsRect(Pointblack.frame, Circle1.frame)) {
        [self EndGame];
        
    } //_collision code
    
}


-(void)TimerCount{
                 
    CountNumber = CountNumber + 1;
    TimerDisplay.text = [NSString stringWithFormat:@"%i", CountNumber];
    
    // Timer

}

             
             
-(void)Circle1Appearing{
   
    int xValue = arc4random() % 320;
    int yValue = arc4random() % 480;
    
    Circle1.center = CGPointMake(xValue, yValue);
    
    // Circle 1 appearing at random coordinates
    

}

-(void)Circle1Growth{
    
    [UIView animateWithDuration:2
                          delay:0
     options:UIViewAnimationOptionBeginFromCurrentState
                     animations:(void (^)(void)) ^{
                         Circle1.transform=CGAffineTransformMakeScale(5, 5);
                     }
                     completion:^(BOOL opposite) {
                         
                     }];
    
}




@synthesize Circle1, Pointblack, startPoint;


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch *myTouch = [touches anyObject];
    
    startPoint = [myTouch locationInView:self.view];
    
    Pointblack.center = CGPointMake(startPoint.x, startPoint.y);
    
        // Touch and drag to move Pointblack.png
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
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
    
    PlayAgain.hidden = YES;
    Circle1.hidden = YES;
    MainMenu.hidden = YES;
    
    TimerDisplay = 0;
    
    HighScoreNumber = [[NSUserDefaults standardUserDefaults] integerForKey:@"HighScoreSaved"];
    
    
    [super viewDidLoad];
    

    
    
    // Do any additional setup after loading the view.
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
