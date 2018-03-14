//
//  ViewController.m
//  Toolbar
//
//  Created by PatrickY on 2018/3/14.
//  Copyright © 2018年 PatrickY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    UILabel                                 *_label;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect screen = [[UIScreen mainScreen] bounds];
    CGFloat toolbarHeight = 44;//默认
    
    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, screen.size.height - toolbarHeight, screen.size.width, toolbarHeight)];
    
    UIBarButtonItem *saveButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(save)];
    UIBarButtonItem *openButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"OPEN" style:UIBarButtonItemStylePlain target:self action:@selector(open)];
    UIBarButtonItem *flexibleButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    //添加到toolbar
    toolbar.items = @[saveButtonItem, flexibleButtonItem, openButtonItem];
    [self.view addSubview:toolbar];
    
    CGFloat labelWidth = 150;
    CGFloat labelHeight = 21;
    CGFloat labelTopView = 250;
    _label = [[UILabel alloc] initWithFrame:CGRectMake((screen.size.width - labelWidth) / 2, labelTopView, labelWidth, labelHeight)];
    _label.text = @"Label";
    _label.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:_label];
    
    
}

- (void)save {
    
    _label.text = @"点击了Save";
    
}

- (void)open {
    
    _label.text = @"点击了Open";
    
}


@end
