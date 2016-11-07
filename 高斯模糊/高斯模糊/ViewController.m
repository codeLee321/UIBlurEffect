//
//  ViewController.m
//  高斯模糊
//
//  Created by tony on 16/11/7.
//  Copyright © 2016年 ZThink. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+add.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.imageView.image = [UIImage gaussianBlurImage:[UIImage imageNamed:@"pic_0.jpg"] withBlur:5];
    [self setBlurEffect];
}

-(void)setBlurEffect{
    UIBlurEffect * effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight];
    UIVisualEffectView * effectView = [[UIVisualEffectView alloc]initWithEffect:effect];
    effectView.frame =self.imageView.frame;
    [self.imageView addSubview:effectView];
    effectView.alpha = 0.5f;
    
    

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
