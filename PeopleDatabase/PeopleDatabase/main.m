//
//  main.m
//  PeopleDatabase
//
//  Created by Jaclyn Tsui on 4/19/14.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Assigns value of 10
        int x = 10;
        //Telling an object to perform an action by sending it a message
        //Square brackets with method stringWithFormat creates new string from a format string with some parameters
        NSString *myString = [NSString stringWithFormat:@"The variable x stores the number %i", x];
        NSLog(@"%@", myString);
        
    }
    return 0;
}

