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

- (NSString *)start
{
    return [NSString stringWithFormat:@"Start power source %@.", self.powerSource];
}

- (NSString *)goForward
{
    return [NSString stringWithFormat:@"%@ %@ Then depress gas pedal.", [self start], [self changeGears:@"Forward"]];
}

- (NSString *)goBackward
{
    return [NSString stringWithFormat:@"%@ %@ Check your rear view mirror. Then depress gas pedal.", [self start], [self changeGears:@"Reverse"]];
}

- (NSString *)stopMoving
{
    return [NSString stringWithFormat:@"Depress brake pedal. %@", [self changeGears:@"Park"]];
}

- (NSString *)makeNoise
{
    return @"Beep beep!";
}

- (NSString *)vehicleDetailsString
{
    //Get basic details from superclass
    NSString *basicDetails = [super vehicleDetailsString];
    
    //Initialize mutable string
    NSMutableString *carDetailsBuilder = [NSMutableString string];
    [carDetailsBuilder appendString:@"\n\nCar-Specific Details:\n\n"];
    
    //String helpers for booleans
    NSString *yes = @"Yes\n";
    NSString *no = @"No\n";
    
    //Add info about car-specific features.
    [carDetailsBuilder appendString:@"Has sunroof: "];
    if (self.hasSunroof) {
        [carDetailsBuilder appendString:yes];
    } else {
        [carDetailsBuilder appendString:no];
    }
    
    [carDetailsBuilder appendString:@"Is Hatchback: "];
    if (self.isHatchback) {
        [carDetailsBuilder appendString:yes];
    } else {
        [carDetailsBuilder appendString:no];
    }
    
    [carDetailsBuilder appendString:@"Is Convertible: "];
    if (self.isConvertible) {
        [carDetailsBuilder appendString:yes];
    } else {
        [carDetailsBuilder appendString:no];
    }
    
    [carDetailsBuilder appendFormat:@"Number of doors: %d", self.numberOfDoors];
    
    //Create the final string by combining basic and car-specific details.
    NSString *carDetails = [basicDetails stringByAppendingString:carDetailsBuilder];
    
    return carDetails;
}


@end
