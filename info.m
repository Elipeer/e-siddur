//
//  info.m
//  e-siddur
//
//  Created by Eli Peer on 9/14/14.
//  Copyright (c) 2014 elipeer. All rights reserved.
//

#import "info.h"

@interface info ()

@end

@implementation info

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [textview scrollRangeToVisible:NSMakeRange([textview.text length], 0)];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)prefersStatusBarHidden {return YES;}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(IBAction)mail:(id)sender{
    if (mail) {
      
            [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/mailbox-finder/id896483380?ls=1&mt=8"]];
        
        }
    }
    
    



@end
