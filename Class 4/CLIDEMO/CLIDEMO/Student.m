#import "Student.h"

@implementation Student

- (id)init
{
    if ([super init])
    {
        self.myHomework = [[Homework alloc] init];
    }
    return self;
}


@end
