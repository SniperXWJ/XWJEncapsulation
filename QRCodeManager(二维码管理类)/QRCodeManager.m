//
//  QRCoderManager.m
//  xwj二维码练习
//
//  Created by qianfeng on 16/9/22.
//  Copyright © 2016年 com.xuwenjie. All rights reserved.
//

#import "QRCodeManager.h"

@implementation QRCodeManager


/**
 二维码管理类单例对象
 
 @return 二维码管理类单例对象
 */
+ (instancetype)shareManager {
    static QRCodeManager *manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        manager = [[self alloc] init];
        
    });
    return manager;
}

/**
 根据内容生成二维码
 
 @param content   二维码的内容
 @param imageSize 二维码的大小（一般传入要显示该二维码的imageView的大小）
 
 @return 二维码清晰图片
 */
- (UIImage *)produceQRImageWithContent:(NSString *)content andSize:(CGSize)imageSize {
    //1.创建二维码滤镜
    CIFilter *QRFilter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    //2.设置二维码内容
    NSData *QRStringData = [content dataUsingEncoding:NSUTF8StringEncoding];
    
    [QRFilter setValue:QRStringData forKey:@"inputMessage"];
    //3.获取模糊的二维码图片
    UIImage *QRResultImage = [UIImage imageWithCIImage:[QRFilter outputImage]];
    //4.将模糊的二维码图片变清晰并返回
    return [QRResultImage QRSharpImage:imageSize];
}

@end
