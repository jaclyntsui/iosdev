//
//  main.m
//  PeopleDatabase
//
//  Created by Jaclyn Tsui on 4/19/14.
//
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //A class is a blueprint to say how an object should look and behave
        
        //Creates a newPerson object
        //alloc: allocates memory for the object and init: initializes the object that will live at that memory address
        Person *newPerson = [[Person alloc] init];
        
        //Call methods
        [newPerson enterInfo];
        [newPerson printInfo];
        
        
    }
    return 0;
}

