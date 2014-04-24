//
//  Car.m
//  Vehicles
//
//  Created by Jaclyn Tsui on 4/23/14.
//  Copyright (c) 2014 Designated Nerd Software. All rights reserved.
//

#import "Car.h"

@implementation Car

-(id)init
{
    if (self = [super init]){
        //Since all cars have 4 wheels, we can safely set this for every initialized instanceof a car
        //Inherited public properties from parent class = Vehicle
        self.numberOfWheels = 4;
    }
    return self;
}



@end
