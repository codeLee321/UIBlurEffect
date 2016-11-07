//
//  UIImage+add.m
//  高斯模糊
//
//  Created by tony on 16/11/7.
//  Copyright © 2016年 ZThink. All rights reserved.
//

#import "UIImage+add.h"

@implementation UIImage (add)
+(UIImage *)gaussianBlurImage:(UIImage *)image withBlur:(CGFloat)blur{
    CIImage * ciImage = [CIImage imageWithCGImage:image.CGImage];
    CGAffineTransform  transform = CGAffineTransformIdentity;
    CIFilter * clampFilter = [CIFilter filterWithName:@"CIAffineClamp"];
    [clampFilter setDefaults];
    [clampFilter setValue:ciImage forKey:kCIInputImageKey];
    [clampFilter setValue:[NSValue valueWithBytes:&transform objCType:@encode(CGAffineTransform)] forKey:@"inputTransform"];
    CIImage * inputImage = clampFilter.outputImage;
    CIContext * context = [CIContext contextWithOptions:nil];
    CIFilter * filter = [CIFilter filterWithName:@"CIGaussianBlur"];
    [filter setValue:inputImage forKey:kCIInputImageKey];
    [filter setValue:[NSString stringWithFormat:@"%.2f",blur] forKey:@"inputRadius"];
    CIImage * outputImage = [filter outputImage];
    CGImageRef outImage = [context createCGImage:outputImage fromRect:ciImage.extent];
    
    UIImage * blurImage = [UIImage imageWithCGImage:outImage];
    CGImageRelease(outImage);
    return blurImage;

}
@end
