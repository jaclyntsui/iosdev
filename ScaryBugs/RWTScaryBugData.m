//
//  RWTScaryBugData.m
//  ScaryBugs
//
//  Created by Jaclyn Tsui on 4/25/14.
//
//

#import "RWTScaryBugData.h"

@implementation RWTScaryBugData

@synthesize title = _title;
@synthesize rating = _rating;

-(id)initWithTitle:(NSString *)title rating:(float)rating{
    if ((self = [super init])){
        self.title = title;
        self.rating = rating;
    }
    return self;
}

@end
