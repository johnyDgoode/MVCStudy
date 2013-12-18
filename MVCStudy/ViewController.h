//
//  ViewController.h
//  MVCStudy
//
//  Created by Kenta Saito on 2013/12/18.
//  Copyright (c) 2013年 KentaSaito. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property(nonatomic,weak)IBOutlet UILabel *nameLabel;
@property(nonatomic,weak)IBOutlet UILabel *speedLabel;
@property(nonatomic,weak)IBOutlet UILabel *fuelLabel;
@property(nonatomic,weak)IBOutlet UIButton *accelButton;
@property(nonatomic,weak)IBOutlet UIButton *brakeButton;
@property(nonatomic,weak)IBOutlet UIButton *chargeButton;

-(IBAction)accel:(id)sender;
-(IBAction)brake:(id)sender;
-(IBAction)charge:(id)sender;
@end
