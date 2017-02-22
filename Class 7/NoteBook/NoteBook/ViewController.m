//
//  ViewController.m
//  NoteBook
//
//  Created by Justin Fincher on 2016/12/7.
//  Copyright © 2016年 Justin Fincher. All rights reserved.
//

#import "ViewController.h"
#import "NoteBookData.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *titleTextfield;

@property (weak, nonatomic) IBOutlet UILabel *dateLabel;//日期显示
@property (weak, nonatomic) IBOutlet UIButton *confirmButton;//确认按钮
@property (weak, nonatomic) IBOutlet UITextView *contentTextView;//内容输入框
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    //取出 MODEL
//    NoteBookData *currentNoteBookData = [NSKeyedUnarchiver unarchiveObjectWithData:[[NSUserDefaults standardUserDefaults] objectForKey:@"currentNoteBookData"]];
//    if (currentNoteBookData != nil)
//    {
//        self.titleTextfield.text = currentNoteBookData.title;
//        //左边 View                右边 Model
//        self.contentTextView.text = currentNoteBookData.content;
//        
//        self.dateLabel.text = [NSString stringWithFormat:@"%@",currentNoteBookData.date];
//    }
}

- (IBAction)confirmButtonPressed:(id)sender {
    
    NoteBookData *currentNoteBookData = [[NoteBookData alloc] init];
    currentNoteBookData.title = self.titleTextfield.text;
    //左边 MODEL                 右边 View
    currentNoteBookData.content = self.contentTextView.text;
    
    currentNoteBookData.date = [NSDate date];
    
    // ----- 取出数组 ------
    NSMutableArray *noteBookDataArray = [NSKeyedUnarchiver unarchiveObjectWithData:[[NSUserDefaults standardUserDefaults] objectForKey:@"noteBookData"]];
    
    if (noteBookDataArray == nil)
    {
        noteBookDataArray = [NSMutableArray array];
    }
    
    // ----- 插入新的日志 -----
    
    [noteBookDataArray addObject:currentNoteBookData];
    
    // ----- 放回数组 --------
    [[NSUserDefaults standardUserDefaults] setObject:[NSKeyedArchiver archivedDataWithRootObject:noteBookDataArray] forKey:@"noteBookData"];
    
    // ----- 返回主界面 ------
    [self.navigationController popViewControllerAnimated:YES];
    
    
//    //存储 MODEL 到系统里
//    [[NSUserDefaults standardUserDefaults] setObject:[NSKeyedArchiver archivedDataWithRootObject:currentNoteBookData] forKey:@"currentNoteBookData"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
