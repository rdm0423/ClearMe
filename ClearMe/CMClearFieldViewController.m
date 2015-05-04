//
//  CMClearFieldViewController.m
//  ClearMe
//
//  Created by Ross McIlwaine on 5/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "CMClearFieldViewController.h"

@interface CMClearFieldViewController () <UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UIButton *clearButton;


@end

@implementation CMClearFieldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.textView.text = @"enter text";
    
    self.textView.layer.borderColor = [[UIColor lightGrayColor] CGColor];
    self.textView.layer.borderWidth = 2.0;
    
    self.textView.delegate = self;
}

- (IBAction)clearButtonPressed:(id)sender {
    self.textView.text = @"";
}

- (void)textViewDidBeginEditing:(UITextView *)textView {
    textView.text = @"";
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.textView endEditing:YES];
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

@end
