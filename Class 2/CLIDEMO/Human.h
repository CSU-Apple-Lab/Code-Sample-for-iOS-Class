
#import <Foundation/Foundation.h>
#import "Homework.h"
@interface Human : NSObject

- (void)eat;
- (void)sleepFrom:(int)fromTime
               To:(int)toTime;

@property int weight;

@end
