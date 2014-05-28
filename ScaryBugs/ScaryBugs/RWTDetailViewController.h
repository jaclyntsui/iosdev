//
//  RWTDetailViewController.h
//  ScaryBugs
//
//  Created by Jaclyn Tsui on 4/25/14.
//
//

#import <UIKit/UIKit.h>
#import "RWTRateView.h"

@interface RWTDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UIButton *imageView;

@property (weak, nonatomic) IBOutlet RWTRateView *rateView;
- (IBAction)addPictureTapped:(id)sender;



@end
