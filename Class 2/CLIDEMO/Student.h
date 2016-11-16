//
//  Student.h
//  CLIDEMO
//
//  Created by Justin Fincher on 2016/11/16.
//  Copyright © 2016年 Justin Fincher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Human.h"
#import "Homework.h"

@interface Student : Human

@property int homework;

- (Homework *) getHomework;

@end
