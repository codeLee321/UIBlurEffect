//
//  UIImage+add.h
//  高斯模糊
//
//  Created by tony on 16/11/7.
//  Copyright © 2016年 ZThink. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (add)
+(UIImage *)gaussianBlurImage:(UIImage *)image withBlur:(CGFloat)blur;
@end
