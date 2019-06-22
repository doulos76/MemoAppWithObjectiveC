//
//  ComposeViewController.m
//  MemoAppWithObjC
//
//  Created by dave76 on 22/06/2019.
//  Copyright © 2019 dave76. All rights reserved.
//

#import "ComposeViewController.h"
#import "Memo.h"

@interface ComposeViewController ()

@property (strong, nonatomic) IBOutlet UITextView *memoTextView;


- (IBAction)close:(id)sender;
- (IBAction)save:(id)sender;


@end

@implementation ComposeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)close:(id)sender {
  [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)save:(id)sender {
  NSString* memo = self.memoTextView.text;
  
  [self dismissViewControllerAnimated:YES completion:nil];
}
@end
