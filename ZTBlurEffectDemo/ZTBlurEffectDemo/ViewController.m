//
//  ViewController.m
//  ZTBlurEffectDemo
//
//  Created by tony on 16/10/22.
//  Copyright © 2016年 ZThink. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *ZTImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //创建需要的毛玻璃特效类型
    UIBlurEffect * effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    
    //毛玻璃view视图
    UIVisualEffectView * effectView = [[UIVisualEffectView alloc]initWithEffect:effect];
    effectView.frame = CGRectMake(100, 410, 150, 150);
    [self.ZTImageView addSubview:effectView];
    //设置模糊透明度
    effectView.alpha = 1.0f;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
