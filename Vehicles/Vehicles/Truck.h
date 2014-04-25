//
//  Truck.h
//  Vehicles
//
//  Created by Jaclyn Tsui on 4/24/14.
//  Copyright (c) 2014 Designated Nerd Software. All rights reserved.
//

#import "Vehicle.h"

@interface Truck : Vehicle

//Factory Method
+(Truck *)truckWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear powerSource:(NSString *)powerSource wheels:(NSInteger)numberOfWheels cargoCapacityCubicFeet:(NSInteger)cargoCapacityCubicFeet;

@property (nonatomic, assign) NSInteger cargoCapacityCubicFeet;

@end
