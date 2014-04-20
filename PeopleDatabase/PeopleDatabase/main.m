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
        
        NSLog(@"Please enter a word");
        
        //Declare a variable named cstring to hold 40 characters
        char cstring[40];
        
        //scanf expects a list of characters from format specifier, %s
        scanf("%s", cstring);
        
        //Create an NSString object from the list of characters that were read in
        NSString *inputString = [NSString stringWithCString:cstring encoding:1];
        
        NSLog(@"You entered the word '%@'", inputString);
        
        
    }
    return 0;
}

