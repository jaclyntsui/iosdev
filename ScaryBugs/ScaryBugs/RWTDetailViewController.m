//
//  RWTDetailViewController.m
//  ScaryBugs
//
//  Created by Jaclyn Tsui on 4/25/14.
//
//

#import "RWTDetailViewController.h"
#import "RWTScaryBugDoc.h"
#import "RWTScaryBugData.h"
#import "RWTUIImageExtras.h"

@interface RWTDetailViewController ()
- (void)configureView;
@end

@implementation RWTDetailViewController

@synthesize picker = _picker;

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    self.rateView.notSelectedImage = [UIImage imageNamed:@"shockedface2_empty.png"];
    self.rateView.halfSelectedImage = [UIImage imageNamed:@"shockedface2_half.png"];
    self.rateView.fullSelectedImage = [UIImage imageNamed:@"shockedface2_full.png"];
    self.rateView.editable = YES;
    self.rateView.maxRating = 5;
    self.rateView.delegate = self;
    
    if (self.detailItem) {
        self.titleField.text = self.detailItem.data.title;
        self.rateView.rating = self.detailItem.data.rating;
        self.imageView.image = self.detailItem.fullImage;
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation {
    return YES;
}

//Called whenever the user changes the value of the text field = update model
- (IBAction)titleFieldTextChanged:(id)sender {
    self.detailItem.data.title = self.titleField.text;
}

#pragma mark UITextFieldDelegate

//called when the user hits the return key on the keyboard = keyboard to disappear off the screen
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

#pragma mark RWTRateViewDelegate

//called when the user chooses a new rating = update model
- (void)rateView:(RWTRateView *)rateView ratingDidChange:(float)rating {
    self.detailItem.data.rating = rating;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addPictureTapped:(id)sender {
}

- (IBAction)titleFieldTextChanged:(id)sender {
}
@end
