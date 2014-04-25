//
//  DetailViewController.m
//  Vehicles
//
//  Created by Transferred on 9/8/13.
//  Copyright (c) 2013 Designated Nerd Software. All rights reserved.
//

#import "VehicleDetailViewController.h"
#import "Vehicle.h"
#import "UIAlertView+Convenience.h"


@interface VehicleDetailViewController ()
@property (nonatomic, weak) IBOutlet UIScrollView *scrollView;
@property (nonatomic, weak) IBOutlet UIView *contentView;
@property (nonatomic, weak) IBOutlet UILabel *vehicleDetailsLabel;
@end

@implementation VehicleDetailViewController

#pragma mark - View Lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

-(void)viewDidLayoutSubviews
{
    //This method is called any time AutoLayout fires - this means it will fire when the user
    //rotates his or her device.
    [super viewDidLayoutSubviews];
    
    //Create a CGRect that contains all the subviews of the content view.
    CGRect allSubviewsFrame = CGRectZero;
    for (UIView *subview in self.contentView.subviews) {
        allSubviewsFrame = CGRectUnion(allSubviewsFrame, subview.frame);
    }
    
    //Set the scrollview content size to the width of the main view and 20 points
    //below the bottom of the CGRect that contains all the subviews so that it scrolls to the
    //appropriate point. 
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width, CGRectGetMaxY(allSubviewsFrame) + 20);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Managing the detail item
- (void)configureView
{
    // Update the user interface for the detail item.
    if (self.detailVehicle) {
        
        //Set the View Controller title, which will display in the Navigation bar
        self.title = [self.detailVehicle vehicleTitleString];
        self.vehicleDetailsLabel.text = [self.detailVehicle vehicleDetailsString];
    }
}

#pragma mark - IBActions

-(IBAction)turn
{
    UIAlertView *turnEntryAlertView = [[UIAlertView alloc] initWithTitle:@"Turn" message:@"Enter number of degrees to turn:" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Go!", nil];
    turnEntryAlertView.alertViewStyle = UIAlertViewStylePlainTextInput;
    [[turnEntryAlertView textFieldAtIndex:0] setKeyboardType:UIKeyboardTypeNumberPad];
    [turnEntryAlertView show];
    
}

-(IBAction)goForward
{
    [UIAlertView showSimpleAlertWithTitle:@"Go Forward" andMessage:[self.detailVehicle goForward]];
}

-(IBAction)goBackward
{
    [UIAlertView showSimpleAlertWithTitle:@"Go Backward" andMessage:[self.detailVehicle goBackward]];
}

-(IBAction)stopMoving
{
    [UIAlertView showSimpleAlertWithTitle:@"Stop Moving" andMessage:[self.detailVehicle stopMoving]];
}


-(IBAction)makeNoise
{
    [UIAlertView showSimpleAlertWithTitle:@"Make some noise!" andMessage:[self.detailVehicle makeNoise]];
}

@end
