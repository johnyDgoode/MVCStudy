//
//  Car.h
//  MVCStudy
//
//  Created by Kenta Saito on 2013/12/18.
//  Copyright (c) 2013年 KentaSaito. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
@property(nonatomic)int fuel;
@property(nonatomic)int speed;
@property(nonatomic,copy)NSString *name;

-(void)go;
-(void)stop;
-(void)charge;
-(id)initWithFuel:(int)fuel carName:(NSString*)carName;
@end
