#import <Foundation/Foundation.h>
#import "Student.h"
#import "Human.h"
#import "Teacher.h"
#import "Homework.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
//        // ------- NSString ------
//        Student *student1 = [[Student alloc] init];
//        Student *student2 = [[Student alloc] init];
//        Human *human1 = [[Human alloc] init];
////
//        // ------- NSDate -------
//        NSDate *dateNow = [NSDate date];
//        NSLog(@"%@",dateNow);
//        
//        NSDate *dateyes = [NSDate dateWithTimeIntervalSinceNow:-86400];
//        NSLog(@"%@",dateyes);
//        
//        double timeSinceDouble = [dateyes timeIntervalSinceNow];
//        NSLog(@"%f",timeSinceDouble);
        
        // ------- NSArray ----------
//        NSMutableArray *array = [NSMutableArray arrayWithObjects:student1,student2,human1, nil];
//        int count = [array count];
//        NSLog(@"Count : %d",count);
//        
//        for (int i =0; i<=count-1; i++)
//        {
//            Human *human = [array objectAtIndex:i];
//            NSLog(@"%@",[human whoAmI]);
//        }
//        
//        for (Human *human in array)
//        {
//            NSLog(@"%@",[human whoAmI]);
//        }
        
        // ------- ARC -------
        Teacher *teacher1 = [[Teacher alloc] init];
        Student *student1 = [[Student alloc] init];

        teacher1.studentHomework = student1.myHomework;
        

        
        NSLog(@"Teacher Died Or Not %@",teacher1);
        NSLog(@"Student Died Or Not %@",student1);
        NSLog(@"Homework Died Or Not %@",student1.myHomework);
        
    }
    return 0;
}
