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

- (AVAudioPlayer *)setupAudioPlayerWithFile:(NSString *)file type:(NSString *)type{
    
    //AVAudioPlayer needs to know the path in the form of a URL
    NSString *path = [[NSBundle mainBundle] pathForResource:file ofType:type];
    NSURL *url = [NSURL fileURLWithPath:path];
    
    //NSError object will store any error message if something goes wrong
    NSError *error;
    
    //Set up AVAudioPlayer > pass in URL > error msg if something goes wrong
    AVAudioPlayer *audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    
    //if something goes wrong the audioPlayer will be set to nil
    if(!audioPlayer){
        NSLog(@"%@", [error description]);
    }
    
    //if all goes well the AVAudioPlayer object will be returned!
    return audioPlayer;
}

- (void)viewDidLoad
{
    //iOS will call viewDidLoad automatically for you when the storyboard and view are loaded
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg_tile.png"]];
    
    scoreLabel.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"field_score.png"]];
    timerLabel.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"field_time.png"]];
    
    buttonBeep = [self setupAudioPlayerWithFile:@"ButtonTap" type:@"wav"];
    secondBeep = [self setupAudioPlayerWithFile:@"SecondBeep" type:@"wav"];
    backgroundMusic = [self setupAudioPlayerWithFile:@"HallOfTheMountainKing" type:@"mp3"];
    
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
    
    //Play when button is pressed
    [buttonBeep play];
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
    
    //Initiate background music while playing
    [backgroundMusic setVolume:0.3];
    [backgroundMusic play];
}

- (void)subtractTime {
    //Decreasing the number of seconds and updating label on screen with new time.
    seconds--;
    timerLabel.text = [NSString stringWithFormat:@"Time: %i", seconds];
    
    //Sound played every second counting down
    [secondBeep play];
    
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
