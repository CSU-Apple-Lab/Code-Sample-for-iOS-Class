
#import "Human.h"

@implementation Human

- (void)sleepFrom:(int)fromTime To:(int)toTime
{
    int sleptTime = toTime - fromTime;
    NSLog(@"I slept from %d to %d, total %d hours",fromTime,toTime,sleptTime);
}

- (void)eat
{
    [self openMouth];
    NSLog(@"I eat");
    self.weight = self.weight + 1;
    [self closeMouth];
}
- (void)openMouth
{
    NSLog(@"I opened mouth");
    NSLog(@"My weight = %d",self.weight);
}
- (void)closeMouth
{
    NSLog(@"I closed mouth");
    NSLog(@"My weight = %d",self.weight);
}


@end
