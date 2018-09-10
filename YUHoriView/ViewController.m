//
//  ViewController.m
//  YUHoriView
//
//  Created by jimi on 2018/7/11.
//  Copyright © 2018 YU. All rights reserved.
//

#import "ViewController.h"
#import "YUHoriView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet YUHoriView *btnsView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _btnsView.titles = [[NSMutableArray alloc]initWithArray:@[@"肥仔水",@"计生用品避孕套",@"美妆",@"男装",@"童装",@"男鞋",@"厨房用品",@"工具",@"母婴",@"玩物",@"书籍",@"饮料",@"薯片",@"软件",@"免费吃鸡",@"书籍",@"饮料",@"薯片",@"软件",@"免费吃鸡",@"书籍",@"饮料",@"薯片",@"软件",@"免费吃鸡"]];
    _btnsView.defaultButtonPos = 2;
    _btnsView.onPosChange = ^(YUHoriElementButton *sender, int pos, NSString *title) {
        NSLog(@"pos: %d ,title :%@",pos,title);
    };
    [_btnsView refresh];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)last:(id)sender {
    int will = _btnsView.curPos - 1;
    if( will < 0  )return ;
    [_btnsView selectPos:will];
}
- (IBAction)next:(id)sender {
    int will = _btnsView.curPos + 1 ;
    if( will >= _btnsView.titles.count )return;
    [_btnsView selectPos:will];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
