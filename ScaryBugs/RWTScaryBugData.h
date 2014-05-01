//
//  RWTScaryBugData.h
//  ScaryBugs
//
//  Created by Jaclyn Tsui on 4/25/14.
//
//

#import <Foundation/Foundation.h>

@interface RWTScaryBugData : NSObject

//Declaring an object with 2 properties
@property (strong) NSString *title;
@property (assign) float rating;


-(id)initWithTitle:(NSString*)title rating:(float)rating;

@end
