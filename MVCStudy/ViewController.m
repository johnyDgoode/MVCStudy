//
//  ViewController.m
//  MVCStudy
//
//  Created by Kenta Saito on 2013/12/18.
//  Copyright (c) 2013年 KentaSaito. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"

@interface ViewController ()
@property(nonatomic,strong)Car *car;//モデルクラス
@property(nonatomic,strong)UIView *carView;//ビュークラス
@end

#define carScale 50

@implementation ViewController

#pragma mark - ライフサイクル

- (void)viewDidLoad{
    
    [super viewDidLoad];

    self.car = [[Car alloc] initWithFuel:10 carName:@"panda"];
    
    self.carView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, carScale, carScale)];
    self.carView.center = self.view.center;
    self.carView.backgroundColor = [UIColor blueColor];
    
    self.nameLabel.text = self.car.name;
    
    [self.view addSubview:self.carView];
    
    //KVO登録
    [self.car addObserver:self forKeyPath:@"speed" options:NSKeyValueObservingOptionNew context:nil];
    [self.car addObserver:self forKeyPath:@"fuel" options:NSKeyValueObservingOptionNew context:nil];
}

#pragma mark - メソッド

-(IBAction)accel:(id)sender{
    
    if(self.car.fuel <= 0){
        
        self.fuelLabel.text = @"no fuel";
        
        return;
    }
    
    [self.car go];
}

-(IBAction)breake:(id)sender{
    
    [self.car stop];
    self.carView.center = self.view.center;
}

-(IBAction)charge:(id)sender{
    
    [self.car charge];
}

#pragma mark - KVO

//KVO監視
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    
    if( [keyPath isEqualToString:@"speed"] ){
    
        self.carView.frame = CGRectMake(self.view.center.x - carScale / 2, self.carView.center.y - self.car.speed, carScale,carScale);
        
        self.speedLabel.text = [NSString stringWithFormat:@"%d",self.car.speed];
        
    }
    else if( [keyPath isEqualToString:@"fuel"] ){
    
        self.fuelLabel.text = [NSString stringWithFormat:@"%d",self.car.fuel];
        
    }
}

@end
