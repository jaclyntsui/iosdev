//
//  Motorcycle.h
//  Vehicles
//
//  Created by Jaclyn Tsui on 4/24/14.
//  Copyright (c) 2014 Designated Nerd Software. All rights reserved.
//

#import "Vehicle.h"

@interface Motorcycle : Vehicle

//Factory Method
+(Motorcycle *)motorcycleWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear engineNoise:(NSString *)engineNoise;

@property (nonatomic, strong) NSString *engineNoise;

@end
