//
//  DemoViewController.h
//  demo
//
//  Created by Duong Van Luong on 3/24/15.
//  Copyright (c) 2015 Duong Van Luong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DemoViewController : UIViewController


@property (nonatomic, weak) IBOutlet UITextField *tfPassword;
@property (nonatomic, weak) IBOutlet UITextField *tfPhone;
@property (nonatomic, weak) IBOutlet UITextField *tfRadius;


- (IBAction)clickbtn1:(id)sender;

@end
