//
//  MotorbikeView.m
//  NguyenManhDung_Baitap11
//
//  Created by Dungnm8 on 10/23/13.
//  Copyright (c) 2013 Dungnm8. All rights reserved.
//

#import "MotorbikeView.h"
#import "PhotoWithLabel.h"

@interface MotorbikeView ()

@end

@implementation MotorbikeView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.view removeFromSuperview];
    switch (self.category) {
        case MOTOR_BIKE_SHOP:
        {
            self.title = @"Xe máy";

            SEL selector = @selector(onItemClick:);
            PhotoWithLabel *item1 = [[PhotoWithLabel alloc] initWithIndex:0
                                                                    andID:123
                                                                 andPhoto:@"61001475_eC1.jpg"
                                                                 andTitle:@"Xe may Yamaha"
                                                                    andVC: self
                                                              andSelector: selector];
            
            PhotoWithLabel *item2 = [[PhotoWithLabel alloc] initWithIndex:1
                                                                    andID:122
                                                                 andPhoto:@"doxe-cf9ad.jpg"
                                                                 andTitle:@"Xe may Yamaha"
                                                                    andVC: self
                                                              andSelector: selector];
            
            PhotoWithLabel *item3 = [[PhotoWithLabel alloc] initWithIndex:2
                                                                    andID:124
                                                                 andPhoto:@"images799298_1350379600_446748443_1_Hinh_anh_ca__cung_cap_cac_loai_xe_may_danh_cho_sinh_vien.jpg"
                                                                 andTitle:@"Xe may Yamaha"
                                                                    andVC: self
                                                              andSelector: selector];
            
            PhotoWithLabel *item4 = [[PhotoWithLabel alloc] initWithIndex:3
                                                                    andID:125
                                                                 andPhoto:@"yamaha_moi.jpg"
                                                                 andTitle:@"Xe may Yamaha"
                                                                    andVC: self
                                                              andSelector: selector];

            [self.view addSubview:item1];
            [self.view addSubview:item2];
            [self.view addSubview:item3];
            [self.view addSubview:item4];

        }
            return;
        case CAR_SHOP:
        {
            self.title = @"Ô tô";

            SEL selector = @selector(onItemClick:);
            PhotoWithLabel *item1 = [[PhotoWithLabel alloc] initWithIndex:0
                                                                    andID:123
                                                                 andPhoto:@"61001475_eC1.jpg"
                                                                 andTitle:@"Ô tô"
                                                                    andVC: self
                                                              andSelector: selector];
            
            PhotoWithLabel *item2 = [[PhotoWithLabel alloc] initWithIndex:1
                                                                    andID:122
                                                                 andPhoto:@"doxe-cf9ad.jpg"
                                                                 andTitle:@"Ô tô"
                                                                    andVC: self
                                                              andSelector: selector];
            
            PhotoWithLabel *item3 = [[PhotoWithLabel alloc] initWithIndex:2
                                                                    andID:124
                                                                 andPhoto:@"images799298_1350379600_446748443_1_Hinh_anh_ca__cung_cap_cac_loai_xe_may_danh_cho_sinh_vien.jpg"
                                                                 andTitle:@"Ô tô"
                                                                    andVC: self
                                                              andSelector: selector];
            
            PhotoWithLabel *item4 = [[PhotoWithLabel alloc] initWithIndex:3
                                                                    andID:125
                                                                 andPhoto:@"yamaha_moi.jpg"
                                                                 andTitle:@"Ô tô "
                                                                    andVC: self
                                                              andSelector: selector];
            

            [self.view addSubview:item1];
            [self.view addSubview:item2];
            [self.view addSubview:item3];
            [self.view addSubview:item4];
        }
            return;
        case BICYCLE_SHOP:
        {
            self.title = @"Xe đạp";
            
            SEL selector = @selector(onItemClick:);
            PhotoWithLabel *item1 = [[PhotoWithLabel alloc] initWithIndex:0
                                                                    andID:123
                                                                 andPhoto:@"61001475_eC1.jpg"
                                                                 andTitle:@"Xe đạp"
                                                                    andVC: self
                                                              andSelector: selector];
            
            PhotoWithLabel *item2 = [[PhotoWithLabel alloc] initWithIndex:1
                                                                    andID:122
                                                                 andPhoto:@"doxe-cf9ad.jpg"
                                                                 andTitle:@"Xe đạp"
                                                                    andVC: self
                                                              andSelector: selector];
            
            PhotoWithLabel *item3 = [[PhotoWithLabel alloc] initWithIndex:2
                                                                    andID:124
                                                                 andPhoto:@"images799298_1350379600_446748443_1_Hinh_anh_ca__cung_cap_cac_loai_xe_may_danh_cho_sinh_vien.jpg"
                                                                 andTitle:@"Xe đạp"
                                                                    andVC: self
                                                              andSelector: selector];
            
            PhotoWithLabel *item4 = [[PhotoWithLabel alloc] initWithIndex:3
                                                                    andID:125
                                                                 andPhoto:@"yamaha_moi.jpg"
                                                                 andTitle:@"Xe đạp"
                                                                    andVC: self
                                                              andSelector: selector];
            
            [self.view addSubview:item1];
            [self.view addSubview:item2];
            [self.view addSubview:item3];
            [self.view addSubview:item4];
        }
            
            return;
        default:
            break;
    }
    


}

- (void) onItemClick: (id) sender
{
    NSLog(@"Cool !");
}

- (void) onItemTap: (NSInteger)ID;
{
    NSLog(@"%d", ID);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
