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

@interface ViewController : UIViewController {
    IBOutlet UILabel *scoreLabel;
    IBOutlet UILabel *timerLabel;
}

- (IBAction)buttonPressed;

@end
