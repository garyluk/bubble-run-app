//
//  ViewController.m
//  timer
//
//  Created by sophie su on 2015-07-23.
//  Copyright (c) 2015 Gary Luk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController

-(IBAction)startgame:(id)sender{
    
    TimerDisplay.text = [NSString stringWithFormat:@"%i", CountNumber];
    
    Timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(TimerCount) userInfo:nil repeats:YES];
    
}


-(void)TimerCount{
    
    CountNumber = CountNumber + 1;
    TimerDisplay.text = [NSString stringWithFormat:@"%i", CountNumber];
    
    
    // Timer
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
