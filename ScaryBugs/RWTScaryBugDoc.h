//
//  RWTScaryBugDoc.h
//  ScaryBugs
//
//  Created by Jaclyn Tsui on 5/2/14.
//
//

#import <Foundation/Foundation.h>

@class RWTScaryBugData;

@interface RWTScaryBugDoc : NSObject

//Creating instance variables/properties
@property (strong) RWTScaryBugData *data;
@property (strong) UIImage *thumbImage;
@property (strong) UIImage *fullImage;

//Creating initializer
-(id)initWithTitle:(NSString*)title rating:(float)rating thumbImage:(UIImage*)thumbImage fullImage:(UIImage *)fullImage;

@end
