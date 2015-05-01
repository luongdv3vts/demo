//
//  DemoViewController.m
//  demo
//
//  Created by Duong Van Luong on 3/24/15.
//  Copyright (c) 2015 Duong Van Luong. All rights reserved.
//

#import "DemoViewController.h"
#import "Page2ViewController.h"
@interface DemoViewController ()
{
    
    NSString *strPassword;
    NSString *strPhone;
    NSString *strRadius;
    NSString *strCode;
    
}
@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapToDismissKeyboard)];
    recognizer.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:recognizer];
    
    for (UIView *obj in self.view.subviews) {
        if ([obj isKindOfClass:[UITextField class]]) {
            [self addPaddingTextField:(UITextField *)obj];
        }
    }
}

- (void) tapToDismissKeyboard {
    
    for (UIView *obj in self.view.subviews) {
        if ([obj isKindOfClass:[UITextField class]]) {
            [(UITextField *)obj resignFirstResponder];
        }
    }
    
}

- (void) addPaddingTextField: (UITextField *)textField {
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 5, 30)];
    
    textField.leftView = view;
    textField.leftViewMode = UITextFieldViewModeAlways;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void) changeView {
    
    [self tapToDismissKeyboard];
    
    Page2ViewController *page = [[Page2ViewController alloc] init];
    [self.navigationController pushViewController:page animated:YES];
    //    [self presentViewController:page animated:YES completion:nil];
    return;
}

- (IBAction)clickbtn1:(id)sender {

    [self changeView];
    
}

- (void) getResult {
    strPassword = [self.tfPassword.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    strPhone = [self.tfPhone.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    strRadius = [self.tfRadius.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    if ([self checkNullString:strPassword] || [self checkNullString:strPhone] || [self checkNullString:strRadius]) {
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"THÔNG BÁO" message:@"Bạn cần nhập đủ thông tin cần thiết!!!" delegate:self cancelButtonTitle:nil otherButtonTitles:@"ĐÓNG", nil];
        [alertView show];
        alertView = nil;
        return;
    }
    
    NSString *strResult;
    
    strCode = [[NSString alloc]initWithFormat:@"SET,%@,\nPHONE,%@,\nRADIUS,%@",strPassword,strPhone,strRadius];
    
    strResult = [NSString stringWithFormat:@"\nTHIẾT LẬP HIỆN TẠI: \n\n %@",strCode];
    
    
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"THÔNG BÁO" message:strResult delegate:self cancelButtonTitle:nil otherButtonTitles:@"ĐÓNG", nil];
    [alertView show];
    alertView = nil;

}

-(BOOL) checkNullString : (NSString *)string {
 
    if (string == nil || [string isEqualToString:@""] || [string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    return NO;
}

@end







