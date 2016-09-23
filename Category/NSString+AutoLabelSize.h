//
//  NSString+AutoLabelSize.h
//  UISerchController练习
//
//  Created by qianfeng on 16/9/21.
//  Copyright © 2016年 com.xuwenjie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>

@interface NSString (AutoLabelSize)



/**
 自动计算Label的大小

 @param font    字体大小

 @return 计算后返回大小
 */
- (CGSize)autoLabelSizeWithFontSize:(UIFont *)font;

@end
