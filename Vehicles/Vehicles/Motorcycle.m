//
//  Motorcycle.m
//  Vehicles
//
//  Created by Jaclyn Tsui on 4/24/14.
//  Copyright (c) 2014 Designated Nerd Software. All rights reserved.
//

#import "Motorcycle.h"

@implementation Motorcycle

#pragma mark - Initialization

-(id) init
{
    if(self = [super init]){
        self.numberOfWheels = 2;
        self.powerSource = @"gas engine";
    }
    return self;
}

@end
