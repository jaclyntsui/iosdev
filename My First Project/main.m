//
//  main.m
//  My First Project
//
//  Created by Jaclyn Tsui on 4/18/14.
//
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        int answer = 0;
        int guess = 0;
        int turn = 0;
        
        //divide randomly generated numbers by 100 gives you 0-99. plus 1 for 1-100
        answer = arc4random() % 100 + 1;
        NSLog(@"The random value is %i", answer);
        
    }
    return 0;
}

