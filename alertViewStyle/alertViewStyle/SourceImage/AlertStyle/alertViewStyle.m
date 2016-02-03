//
//  alertViewStyle.m
//  alertViewStyle
//
//  Created by Edwin on 16/2/2.
//  Copyright © 2016年 EdwinXiang. All rights reserved.
//

#import "alertViewStyle.h"

@interface alertViewStyle()
/**
 *  左边按钮
 */
@property (nonatomic,strong) UIButton *leftBtn;
/**
 *  右边按钮
 */
@property (nonatomic,strong) UIButton *rightBtn;
/**
 *  图片背景
 */
@property (nonatomic,strong) UIImageView *imageView;
/**
 *  显示文字内容
 */
@property (nonatomic,strong) UILabel *messageLabel;
/**
 *  提示框
 */
@property (nonatomic,strong) UIView *bgView;
@end

@implementation alertViewStyle

-(instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.5];
        [self creatUI];
    }
    return self;
}

-(void)creatUI{
    
    UIButton *mainBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    mainBtn.frame = CGRectMake(0, 0, ScreenW, screenH);
    [self addSubview:mainBtn];
    [mainBtn addTarget:self action:@selector(mainBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    self.bgView = [[UIView alloc]init];
    self.bgView.frame = CGRectMake(70, 0, ScreenW-100, ScreenW-140);
    self.bgView.center = self.center;
    self.bgView.backgroundColor = [UIColor whiteColor];
    self.bgView.layer.cornerRadius = 5;
    self.bgView.layer.masksToBounds = YES;
    [self addSubview:self.bgView];
    
    self.imageView = [[UIImageView alloc]initWithFrame:CGRectMake(self.bgView.frame.size.width/2-25, 20, 50, 50)];
//    CGPoint imageCenter = CGPointMake(0, 0);
//    imageCenter.y = self.bgView.center.y-50;
//    imageCenter.x = self.bgView.center.x;
//    self.imageView.center = imageCenter;
    self.imageView.image = [UIImage imageNamed:@"error"];
    [self.bgView addSubview:self.imageView];
    
    self.messageLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, CGRectGetMaxY(self.imageView.frame)+10, self.bgView.frame.size.width-40, 30)];
    self.messageLabel.text = @"网络错误!";
    self.messageLabel.backgroundColor = [UIColor orangeColor];
    self.messageLabel.textAlignment = NSTextAlignmentCenter;
    self.messageLabel.font = [UIFont systemFontOfSize:14.0f];
    [self.bgView addSubview:self.messageLabel];
    
    self.leftBtn = [UIButton buttonWithType:UIButtonTypeSystem];
}


#pragma mainBtnClick
-(void)mainBtnClick:(UIButton *)btn{
    //click btn the mainVc Dismiss
    [UIView animateWithDuration:0.5 animations:^{
        self.alpha = 1.0;
    } completion:^(BOOL finished) {
        self.alpha = 0.0;
         self.hidden = YES;
    }];
}

-(void)show{
    
    
}
@end
