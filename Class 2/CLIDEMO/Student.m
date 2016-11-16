//
//  Student.m
//  CLIDEMO
//
//  Created by Justin Fincher on 2016/11/16.
//  Copyright © 2016年 Justin Fincher. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)eat
{
    [super eat];
    NSLog(@"Student Eat");
}
- (Homework *) getHomework
{
    Homework *newHomework = [[Homework alloc] init];
    return newHomework;
}

@end
