#import "Human.h"

@implementation Human

- (NSString *)whoAmI
{
    return [NSString stringWithFormat:@"I am %@",[self className]];
}

@end
