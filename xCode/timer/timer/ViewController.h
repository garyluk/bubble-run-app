//
//  ViewController.h
//  timer
//
//  Created by sophie su on 2015-07-23.
//  Copyright (c) 2015 Gary Luk. All rights reserved.
//

#import <UIKit/UIKit.h>


int CountNumber;

@interface ViewController : UIViewController
{
    
    

    IBOutlet UILabel *TimerDisplay;
    
    NSTimer *Timer;
    

}


-(void)TimerCount;
-(IBAction)startgame:(id)sender;


@end
