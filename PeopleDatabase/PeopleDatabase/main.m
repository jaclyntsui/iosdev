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
        char response;
        
        //NSMutableArray allows you to add objects to the array
        NSMutableArray *people = [[NSMutableArray alloc] init];
        
        //A class is a blueprint to say how an object should look and behave
        
        
        
        //Do-while loop conditions are checked at the end of the loop
        do{
            
        //Creates a newPerson object
        //alloc: allocates memory for the object and init: initializes the object that will live at that memory address
        Person *newPerson = [[Person alloc] init];
        
        //Call methods
        [newPerson enterInfo];
        [newPerson printInfo];
        [people addObject:newPerson];
        
            //Program will now prompt you to ask you if you are done.
            NSLog(@"Do you want to enter another name? (y/n)");
            scanf("\n%c", &response);
        }while(response == 'y');
        
        NSLog(@"Number of people in the database: %li", [people count]);
        for (Person *onePerson in people){
            [onePerson printInfo];
        }
        
    }
    return 0;
}

