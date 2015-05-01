//
//  Page2ViewController.m
//  demo
//
//  Created by Duong Van Luong on 3/24/15.
//  Copyright (c) 2015 Duong Van Luong. All rights reserved.
//

#import "Page2ViewController.h"

@interface Page2ViewController ()

@end

@implementation Page2ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self setCustomControl];
}

- (void) setCustomControl {
    
    [self.btnOK setBackgroundColor:[UIColor blueColor]];
    
    CGRect rectBtn = CGRectMake(100, 100, 100, 40);
    
    self.btnOK.frame = rectBtn ;
    
    CGRect rectLbl = CGRectMake(0, 200, self.view.frame.size.width, 40);
    UILabel *lbl = [[UILabel alloc]initWithFrame:rectLbl];
    [lbl setBackgroundColor:[UIColor redColor]];
    lbl.text = @"ABC";
    [lbl setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview: lbl];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickButton:(id)sender {
    
    [self.view setBackgroundColor:[UIColor greenColor]];
    
}
@end
