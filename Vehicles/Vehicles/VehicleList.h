//
//  VehicleList.h
//  Vehicles
//
//  Created by Jaclyn Tsui on 4/25/14.
//  Copyright (c) 2014 Designated Nerd Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VehicleList : NSObject

//The list of vehicles.
@property (nonatomic, strong) NSArray *vehicles;

//Singleton Instance
+ (VehicleList *)sharedInstance;


@end
