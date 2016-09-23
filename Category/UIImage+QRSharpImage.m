//
//  UIImage+QRSharpImage.m
//  xwj二维码练习
//
//  Created by qianfeng on 16/9/22.
//  Copyright © 2016年 com.xuwenjie. All rights reserved.
//

#import "UIImage+QRSharpImage.h"

@implementation UIImage (QRSharpImage)

/**
 将模糊二维码图片转化为清晰的二维码图片
 
 @param imageSize 图片将生成的大小
 
 @return 清晰二维码图片
 */
- (UIImage *)QRSharpImage:(CGSize)imageSize {
    
    //1.开启图片上下文
    UIGraphicsBeginImageContextWithOptions(imageSize, NO, 0);
    //2.设置图片质量
    CGContextSetInterpolationQuality(UIGraphicsGetCurrentContext(), kCGInterpolationNone);
    //3.将模糊二维码画入画布
    [self drawInRect:CGRectMake(0, 0, imageSize.width, imageSize.height)];
    //4.从图片上下文中获取清晰的二维码图片
    UIImage *sharpQRImage = UIGraphicsGetImageFromCurrentImageContext();
    //5.关闭图片上下文
    UIGraphicsEndImageContext();
    
    return sharpQRImage;
}

@end
