//
//  ViewController.m
//  Tappity_tap
//
//  Created by Jaclyn Tsui on 4/20/14.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //iOS will call viewDidLoad automatically for you when the storyboard and view are loaded
    [super viewDidLoad];
    
    
    //Call method will start things off.
    [self setupGame];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    count++;
    
    scoreLabel.text = [NSString stringWithFormat:@"Score\n%i", count];
}


- (void)setupGame {
    //1
    seconds = 30;
    count = 0;
    
    //2
    timerLabel.text = [NSString stringWithFormat:@"Time: %i", seconds];
    scoreLabel.text = [NSString stringWithFormat:@"Score\n%i", count];
    
    //3
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target:self
             selector:@selector(subtractTime)
             userInfo:nil
                                            repeats:YES];
}

- (void)subtractTime {
    //Decreasing the number of seconds and updating label on screen with new time.
    seconds--;
    timerLabel.text = [NSString stringWithFormat:@"Time: %i", seconds];
    
    //When timer hits 0, timer will stop and end the game
    if(seconds == 0){
        [timer invalidate];
        
    //Alert for end-of-game scenario
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Time is up!" message: [NSString stringWithFormat:@"You scored %i points", count]delegate:self cancelButtonTitle:@"Play Again" otherButtonTitles:nil];
        
        [alert show];
    }
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    [self setupGame];
}


@end
