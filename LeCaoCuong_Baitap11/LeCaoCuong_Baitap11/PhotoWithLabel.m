//
//  PhotoWithLabel.m
//  ParisGateaux
//
//  Created by techmaster on 8/11/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "PhotoWithLabel.h"
#import "UIDevice+extend.h"

@implementation PhotoWithLabel

- (id) initWithIndex: (NSInteger)index
               andID: (NSInteger)ID
            andPhoto: (NSString*) photo
            andTitle: (NSString*) title
               andVC: (id<PhotoWithLabelDelegate>) viewController
         andSelector: (SEL) selector;
{
    UIDevice *device = [UIDevice currentDevice];
    CGRect frame;
    if ([device isIOS7orlater]) {
        frame = CGRectMake(0, (index * 90) + 65, 320, 90);
    } else {
        frame = CGRectMake(0, index * 90, 320, 90);
    }


    self = [super initWithFrame:frame];
    if (self) {
        
        self.photo = photo;
        self.title = title;
        self.ID = ID;
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:self.photo]];
        imageView.frame = CGRectMake(5, 5, 80, 80);

        imageView.contentMode = UIViewContentModeScaleAspectFit;
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(90, 35, 200, 20)];
        label.text = self.title;
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        button.frame = CGRectMake(280, 35, 30, 30);

        self.delegate = viewController;
        
       /* [button addTarget:viewController action:selector forControlEvents:UIControlEventTouchUpInside];*/
        [button addTarget:self
                   action:@selector(handleEvent:)
         forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:imageView];
        [self addSubview:label];
        [self addSubview:button];
    }
    return self;
}

- (void) handleEvent: (id) sender
{
    [self.delegate onItemTap:self.ID];
}


@end
