//
//  Vehicle.m
//  Vehicles
//
//  Created by Transferred on 9/8/13.
//  Copyright (c) 2013 Designated Nerd Software. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

-(NSString *)goForward
{
    return nil;
}

-(NSString *)goBackward
{
    return nil;
}

-(NSString *)stopMoving
{
    return nil;
}

-(NSString *)turn:(NSInteger)degrees
{
    NSInteger degreesInACircle = 360;
    
    if (degrees > degreesInACircle || degrees < -degreesInACircle){
        degrees = degrees % degreesInACircle;
    }
    return [NSString stringWithFormat:@"Turn %d degrees.", degrees];
}

-(NSString *)changeGears:(NSString *)newGearName
{
    return [NSString stringWithFormat:@"Put %@ into %@ gear.", self.modelName, newGearName];
}

-(NSString *)makeNoise
{
    return nil;
}

-(NSString *)vehicleTitleString
{
    return [NSString stringWithFormat:@"%d %@ %@", self.modelYear, self.brandName, self.modelName];
}

@end
