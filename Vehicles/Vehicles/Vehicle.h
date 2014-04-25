//
//  Vehicle.h
//  Vehicles
//
//  Created by Transferred on 9/8/13.
//  Copyright (c) 2013 Designated Nerd Software. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject


//return void: useful when you don't need any information back from the method (-(void)nameOfMethod)
//return NSString: useful when you want to store info
@property (nonatomic, assign) NSInteger numberOfWheels;
@property (nonatomic, copy) NSString *powerSource;
@property (nonatomic, copy) NSString *brandName;
@property (nonatomic, copy) NSString *modelName;
@property (nonatomic, assign) NSInteger modelYear;


//Basic operation methods
-(NSString *)goForward;
-(NSString *)goBackward;
-(NSString *)stopMoving;
-(NSString *)changeGears:(NSString *)newGearName;
-(NSString *)turn:(NSInteger)degrees;
-(NSString *)makeNoise;

//Convenience method for UITableViewCells and UINavigatorBar titles
-(NSString *)vehicleTitleString;

//Method to get Vehicle details
-(NSString *)vehicleDetailsString;

//Factory Method
+ (instancetype)vehicleWithBrandName:(NSString *)brandName modelName:(NSString *)modelName modelYear:(NSInteger)modelYear powerSource:(NSString *)powerSource wheels:(NSInteger)numberOfWheels;

@end
