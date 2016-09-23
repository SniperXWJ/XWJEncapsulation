//
//  NSString+AutoLabelSize.m
//  UISerchController练习
//
//  Created by qianfeng on 16/9/21.
//  Copyright © 2016年 com.xuwenjie. All rights reserved.
//

#import "NSString+AutoLabelSize.h"

@implementation NSString (AutoLabelSize)


/**
 自动计算Label的大小
 
 @param font    字体大小
 
 @return 计算后返回大小
 */
- (CGSize)autoLabelSizeWithFontSize:(UIFont *)font
{
   CGRect resultRect =  [self boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT)
                                           options:NSStringDrawingUsesLineFragmentOrigin
                                        attributes:@{NSFontAttributeName:font}
                                           context:nil];
    return resultRect.size;
}

@end
