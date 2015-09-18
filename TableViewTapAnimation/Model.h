//
//  Model.h
//  TableViewTapAnimation
//
//  Created by YouXianMing on 15/9/18.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Model : NSObject

@property (nonatomic) CGFloat  normalHeight;
@property (nonatomic) CGFloat  expendHeight;
@property (nonatomic) BOOL     expend;

+ (instancetype)ModelWithNormalHeight:(CGFloat)normalHeight expendHeight:(CGFloat)expendHeight expend:(BOOL)expend;

@end
