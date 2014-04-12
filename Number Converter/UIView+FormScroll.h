//
//  UIView+FormScroll.h
//  GPA Calculator
//
//  Created by Lawrence Chong on 3/10/14.
//  Copyright (c) 2014 Lawrence Chong. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface UIView (FormScroll)

-(void)scrollToY:(float)y;
-(void)scrollToView:(UIView *)view;
-(void)scrollElement:(UIView *)view toPoint:(float)y;

@end