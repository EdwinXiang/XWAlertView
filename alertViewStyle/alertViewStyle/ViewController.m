//
//  ViewController.m
//  alertViewStyle
//
//  Created by Edwin on 16/2/2.
//  Copyright © 2016年 EdwinXiang. All rights reserved.
//

#import "ViewController.h"
#import "alertViewStyle.h"
@interface ViewController ()<HHAlertViewDelegate>
- (IBAction)btnClick:(id)sender;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    alertViewStyle *alert = [[alertViewStyle alloc]initWithFrame:self.view.bounds];
////    alert.backgroundColor = [UIColor orangeColor];
//    [self.view addSubview:alert];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(100, 100, 100, 30);
    [btn setTitle:@"警告弹出框" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(waringBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn1.frame = CGRectMake(100, 140, 100, 30);
    [btn1 setTitle:@"警告弹出框1" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(waringBtnClick1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn2.frame = CGRectMake(100, 190, 100, 30);
    [btn2 setTitle:@"警告弹出框2" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(waringBtnClick2:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/**
 *  错误提示
 *
 */
- (IBAction)btnClick:(id)sender {
    
    HHAlertView *alertview = [[HHAlertView alloc] initWithTitle:nil detailText:@"网络错误" cancelButtonTitle:@"取消" otherButtonTitles:@[@"确定"]];
    alertview.delegate = self;
    alertview.tag = 1000;
    alertview.mode = HHAlertViewModeCustom;
    [alertview setEnterMode:HHAlertEnterModeTop];
    [alertview setLeaveMode:HHAlertLeaveModeBottom];
    [alertview setCustomView:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"error"]]];
    [alertview show];
}

- (void)waringBtnClick:(id)sender {
    
    HHAlertView *alertview = [[HHAlertView alloc] initWithTitle:nil detailText:@"警告" cancelButtonTitle:@"取消" otherButtonTitles:@[@"确定"]];
    alertview.delegate = self;
    alertview.tag = 1001;
    alertview.mode = HHAlertViewModeCustom;
    [alertview setEnterMode:HHAlertEnterModeFadeIn];
    [alertview setLeaveMode:HHAlertLeaveModeFadeOut];
    [alertview setCustomView:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"reminder"]]];
    [alertview show];
}

- (void)waringBtnClick2:(id)sender {
    
    HHAlertView *alertview = [[HHAlertView alloc] initWithTitle:nil detailText:@"警告" cancelButtonTitle:@"确定" otherButtonTitles:nil];
    alertview.mode = HHAlertViewModeCustom;
    alertview.delegate = self;
    alertview.tag = 1002;
    [alertview setEnterMode:HHAlertEnterModeTop];
    [alertview setLeaveMode:HHAlertLeaveModeTop];
    [alertview setCustomView:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"reminder"]]];
    [alertview show];
}

- (void)waringBtnClick1:(id)sender {
    
    HHAlertView *alertview = [[HHAlertView alloc] initWithTitle:nil detailText:@"警告" cancelButtonTitle:nil otherButtonTitles:@[@"确定"]];
    alertview.delegate = self;
    alertview.tag = 1003;
    alertview.mode = HHAlertViewModeCustom;
    [alertview setEnterMode:HHAlertEnterModeLeft];
    [alertview setLeaveMode:HHAlertLeaveModeRight];
    [alertview setCustomView:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"reminder"]]];
    [alertview show];
}

- (void)HHAlertView:(HHAlertView *)alertview didClickButtonAnIndex:(NSInteger)buttonIndex {
    if (alertview.tag == 1000) {
        NSLog(@"%zd",buttonIndex);
    }else if (alertview.tag == 1001){
        if (buttonIndex == 0) {
            NSLog(@"取消按钮的方法");
        }else if (buttonIndex == 1){
            
        }
        
    }else if (alertview.tag == 1002){
        
    }else if (alertview.tag == 1003){
        
    }
}

@end
