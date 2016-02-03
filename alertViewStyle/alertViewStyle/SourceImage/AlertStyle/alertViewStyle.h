//
//  alertViewStyle.h
//  alertViewStyle
//
//  Created by Edwin on 16/2/2.
//  Copyright © 2016年 EdwinXiang. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    alertViewStyleTypeError,
    alertViewStyleTypeRemind,
    
}alertViewStyleType;

@class alertViewStyle;
@protocol alertViewStyleDelegate <NSObject>

@optional
-(void)alertView:(alertViewStyle *)alertView alertStyleType:(alertViewStyleType)type alertMessage:(NSString *)message;

@end

@interface alertViewStyle : UIView

@property (nonatomic,assign) alertViewStyleType type;

/**
 *  显示视图
 */
-(void)show;


@end
