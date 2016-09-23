//
//  QRCoderManager.h
//  xwj二维码练习
//
//  Created by qianfeng on 16/9/22.
//  Copyright © 2016年 com.xuwenjie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIImage+QRSharpImage.h"
@interface QRCodeManager : NSObject

/**
 二维码管理类单例对象
 
 @return 二维码管理类单例对象
 */
+ (instancetype)shareManager;


/**
 根据内容生成二维码
 
 @param content   二维码的内容
 @param imageSize 二维码的大小（一般传入要显示该二维码的imageView的大小）
 
 @return 二维码清晰图片
 */
- (UIImage *)produceQRImageWithContent:(NSString *)content andSize:(CGSize)imageSize;


@end
