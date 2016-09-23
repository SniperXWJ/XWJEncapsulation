//
//  UIImage+QRSharpImage.h
//  xwj二维码练习
//
//  Created by qianfeng on 16/9/22.
//  Copyright © 2016年 com.xuwenjie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (QRSharpImage)


/**
 将模糊二维码图片转化为清晰的二维码图片

 @param imageSize 图片将生成的大小

 @return 清晰二维码图片
 */
- (UIImage *)QRSharpImage:(CGSize)imageSize;

@end
