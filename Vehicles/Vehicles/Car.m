//
//  Car.m
//  Vehicles
//
//  Created by Jaclyn Tsui on 4/23/14.
//  Copyright (c) 2014 Designated Nerd Software. All rights reserved.
//

#import "Car.h"

@implementation Car

#pragma mark - Factory Method
+(Car *)carWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear powerSource:(NSString *)powerSource numberOfDoors:(NSInteger)numberOfDoors convertible:(BOOL)isConvertible hatchback:(BOOL)isHatchback sunroof:(BOOL)hasSunroof
{
    //Create the car object using the superclass factory method.
    Car *newCar = [Car vehicleWithBrandName:brandName modelName:modelName modelYear:modelYear powerSource:powerSource wheels:4];
    
    //Set the car-specific properties using the passed-in variables.
    newCar.numberOfDoors = numberOfDoors;
    newCar.isConvertible = isConvertible;
    newCar.isHatchback = isHatchback;
    newCar.hasSunroof = hasSunroof;
    
    //Return the fully instantiated Car object.
    return newCar;
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
