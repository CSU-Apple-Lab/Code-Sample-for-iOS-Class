#import <Foundation/Foundation.h>

@interface NoteBookData : NSObject<NSCoding>

@property (strong) NSString *title;
@property (strong) NSString *content;
@property (strong) NSDate *date;

@end
