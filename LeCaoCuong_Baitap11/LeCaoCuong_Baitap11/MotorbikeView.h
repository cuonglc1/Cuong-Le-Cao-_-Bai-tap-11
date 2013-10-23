//
//  MotorbikeView.h
//  NguyenManhDung_Baitap11
//
//  Created by Dungnm8 on 10/23/13.
//  Copyright (c) 2013 Dungnm8. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoWithLabelDelegate.h"

typedef enum {
    MOTOR_BIKE_SHOP,
    CAR_SHOP,
    BICYCLE_SHOP,
} CATEGORY;


@interface MotorbikeView : UIViewController<PhotoWithLabelDelegate>

@property (nonatomic, assign) CATEGORY category;

@end
