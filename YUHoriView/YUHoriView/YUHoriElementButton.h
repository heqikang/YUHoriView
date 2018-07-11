//
//  YUHoriElementButton.h
//  YUHoriView
//
//  Created by jimi on 2018/7/11.
//  Copyright © 2018 YU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YUHoriElementButton : UIView
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIView *underlineView;
+ (instancetype)xib_YUHoriElementButton;

@end