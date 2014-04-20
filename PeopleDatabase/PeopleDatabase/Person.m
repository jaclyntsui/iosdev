//
//  Person.m
//  PeopleDatabase
//
//  Created by Jaclyn Tsui on 4/20/14.
//
//

#import "Person.h"

@implementation Person

//Prompt user to enter info
- (void)enterInfo {
    NSLog(@"What is the first name?");
    char cstring[40];
    scanf("%s", cstring);
    
    firstName = [NSString stringWithCString:cstring encoding:1];

}

- (void)printInfo {
    NSLog(@"First name: %@", firstName);
}

@end
