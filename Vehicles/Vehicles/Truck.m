//
//  Truck.m
//  Vehicles
//
//  Created by Jaclyn Tsui on 4/24/14.
//  Copyright (c) 2014 Designated Nerd Software. All rights reserved.
//

#import "Truck.h"

@implementation Truck

#pragma mark - Factory Method
+(Truck *)truckWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear powerSource:(NSString *)powerSource wheels:(NSInteger)numberOfWheels cargoCapacityCubicFeet:(NSInteger)cargoCapacityCubicFeet
{
    //Create a new instance using the superclass's factory method.
    Truck *newTruck = [Truck vehicleWithBrandName:brandName modelName:modelName modelYear:modelYear powerSource:powerSource wheels:numberOfWheels];
    
    newTruck.cargoCapacityCubicFeet = cargoCapacityCubicFeet;
    
    //Return the newly created truck instance.
    return newTruck;
}

#pragma mark - Superclass overrides
- (NSString *)goBackward
{
    NSMutableString *backwardString = [NSMutableString string];
    if (self.cargoCapacityCubicFeet > 100) {
        //Sound a backup alarm first
        [backwardString appendFormat:@"wait for \"%@\", then %@", [self soundBackupAlarm], [self changeGears:@"Reverse"]];
    }else {
        [backwardString appendFormat:@"%@ Depress gas pedal.", [self changeGears:@"Reverse"]];
    }
    return backwardString;
}

- (NSString *)goForward
{
    return [NSString stringWithFormat:@"%@ Depress gas pedal.", [self changeGears:@"Drive"]];
}

- (NSString *)stopMoving
{
    return [NSString stringWithFormat:@"Depress brake pedal. %@", [self changeGears:@"Park"]];
}

#pragma mark - Private methods
- (NSString *)soundBackupAlarm
{
    return @"Beep! Beep! Beep!";
}

- (NSString *)makeNoise
{
    if (self.numberOfWheels <= 4){
        return @"Beep beep!";
    } else if (self.numberOfWheels > 4 && self.numberOfWheels <=8){
        return @"Honk!";
    }else{
        return @"HOOOONNNNK!";
    }
}

- (NSString *)vehicleDetailsString
{
    //Get basic details from superclass
    NSString *basicDetails = [super vehicleDetailsString];
    
    //Initialize mutable string
    NSMutableString *truckDetailsBuilder = [NSMutableString string];
    [truckDetailsBuilder appendString:@"\n\nTruck-Specific Details:\n\n"];
    
    //Add info about truck-specific features
    [truckDetailsBuilder appendFormat:@"Cargo capacity: %d cubic feet", self.cargoCapacityCubicFeet];
    
    //Create the final string by combining basic and truck-specific details
    NSString *truckDetails = [basicDetails stringByAppendingString:truckDetailsBuilder];
    
    return truckDetails;
}

@end
