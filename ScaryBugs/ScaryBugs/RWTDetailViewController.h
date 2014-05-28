//
//  RWTDetailViewController.h
//  ScaryBugs
//
//  Created by Jaclyn Tsui on 4/25/14.
//
//

#import <UIKit/UIKit.h>

@interface RWTDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@property (weak, nonatomic) IBOutlet UITextField *titleField;

@end
