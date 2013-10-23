//
//  MainView.m
//  NguyenManhDung_Baitap11
//
//  Created by Dungnm8 on 10/23/13.
//  Copyright (c) 2013 Dungnm8. All rights reserved.
//

#import "MainView.h"
#import "MotorbikeView.h"

@interface MainView ()

@property (nonatomic, retain) MotorbikeView * detailScreen;

@end

@implementation MainView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Việt Nam Shop";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)btnMotoby:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[MotorbikeView alloc] initWithNibName:@"MotorbikeView" bundle:nil];
    }
    self.detailScreen.category = MOTOR_BIKE_SHOP;
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}


- (IBAction)btnCar:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[MotorbikeView alloc] initWithNibName:@"MotorbikeView" bundle:nil];
    }
    self.detailScreen.category = CAR_SHOP;
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}


- (IBAction)btnBicycle:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[MotorbikeView alloc] initWithNibName:@"MotorbikeView" bundle:nil];
    }
    self.detailScreen.category = BICYCLE_SHOP;
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}


- (IBAction)btnAboutMe:(id)sender {
    UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Well come"
                                                      message:@"Have a good day :)"
                                                     delegate:nil
                                            cancelButtonTitle:@"OK"
                                            otherButtonTitles:nil];
    [message show];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
