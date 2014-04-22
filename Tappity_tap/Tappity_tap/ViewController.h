//
//  ViewController.h
//  Tappity_tap
//
//  Created by Jaclyn Tsui on 4/20/14.
//
//

#import <UIKit/UIKit.h>

//Header files are used to declare different parts of the program (doesn't give the actual implementation details)

//Outlet instance variables below refers to the 2 labels created in Main.storyboard

@interface ViewController : UIViewController<UIAlertViewDelegate> {
    IBOutlet UILabel *scoreLabel;
    IBOutlet UILabel *timerLabel;
    
    //Hold number of button taps
    NSInteger count;
    
    //Hold number of seconds remaining
    NSInteger seconds;
    
    NSTimer *timer;
}

- (IBAction) buttonPressed;
- (void)setupGame;
- (void)subtractTime;

@end
