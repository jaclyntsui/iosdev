//
//  Person.h
//  PeopleDatabase
//
//  Created by Jaclyn Tsui on 4/20/14.
//
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *firstName;
    NSString *lastName;
    int age;
}

- (void)enterInfo;
- (void)printInfo;

@end
