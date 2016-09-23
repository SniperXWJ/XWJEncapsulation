//
//  UIImage+StretchImage.m
//  UISerchController练习
//
//  Created by qianfeng on 16/9/21.
//  Copyright © 2016年 com.xuwenjie. All rights reserved.
//

#import "UIImage+StretchImage.h"

@implementation UIImage (StretchImage)

/**
 拉伸图片平分四份
 
 @return 拉伸后的图片
 */
- (UIImage *)stretchImage
{
    UIImage *resultImage = [self stretchableImageWithLeftCapWidth:self.size.width/2 topCapHeight:self.size.height/2];
    
    
    return resultImage;
}

@end
