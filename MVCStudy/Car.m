//
//  Car.m
//  MVCStudy
//
//  Created by Kenta Saito on 2013/12/18.
//  Copyright (c) 2013年 KentaSaito. All rights reserved.
//

#import "Car.h"

@implementation Car

-(id)initWithFuel:(int)fuel carName:(NSString*)carName{
    
    if (self = [super init]) {
        
        self.fuel = fuel;
        self.name = carName;
    }
    
    return self;
}

-(void)go{
    self.speed ++;
    self.fuel --;
}

-(void)charge{
    self.fuel += 10;
}

-(void)stop{
    self.speed = 0;
}

@end
