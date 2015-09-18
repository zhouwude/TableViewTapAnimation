//
//  Model.m
//  TableViewTapAnimation
//
//  Created by YouXianMing on 15/9/18.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import "Model.h"

@implementation Model

+ (instancetype)ModelWithNormalHeight:(CGFloat)normalHeight expendHeight:(CGFloat)expendHeight expend:(BOOL)expend {

    Model *model = [[Model alloc] init];
    
    model.normalHeight = normalHeight;
    model.expendHeight = expendHeight;
    model.expend       = expend;
    
    return model;
}

@end
