//
//  shachris.m
//  e-siddur
//
//  Created by Eli Peer on 9/22/14.
//  Copyright (c) 2014 elipeer. All rights reserved.
//

#import "shachris.h"

@interface shachris ()

@end

@implementation shachris
@synthesize textView;
bool buttonToggeled;
- (void)viewDidLoad {
    // it prints the initial position of text view
    NSLog(@"%f %f",textView.contentSize.width , textView.contentSize.height);
    
    if (scrollingTimer == nil)
    {
        // A timer that updates the content off set after some time so it can scroll
        // you can change time interval according to your need (0.06)
        // autoscrollTimerFired is the method that will be called after specified time interval. This method will change the content off set of text view
        scrollingTimer = [NSTimer scheduledTimerWithTimeInterval:(0.07)
                                                          target:self selector:@selector(autoscrollTimerFired) userInfo:nil repeats:YES];
    }
    [super viewDidLoad];
    // Do any additional setup after loading the view.
 }

- (IBAction)StopScrolling{

    if (!buttonToggeled) {
        [but setTitle:@"Scroll On" forState:UIControlStateNormal];
        buttonToggeled = YES;
        [self Stop];
    }
    else {
        [but setTitle:@"Scroll Off" forState:UIControlStateNormal];
        buttonToggeled = NO;
        [self Start];
    }
    


}
-(void)Stop{
    [scrollingTimer invalidate];
    [new1 invalidate];
}

-(void)Start{
    
   new1 =  [NSTimer scheduledTimerWithTimeInterval:(0.07)
                                     target:self selector:@selector(autoscrollTimerFired) userInfo:nil repeats:YES];}

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
- (void) autoscrollTimerFired
{
    CGPoint scrollPoint = self.textView.contentOffset; // initial and after update
    NSLog(@"%.2f %.2f",scrollPoint.x,scrollPoint.y);
    if (scrollPoint.y == 13000) // to stop at specific position
    {
        [scrollingTimer invalidate];
        scrollingTimer = nil;
    }
    scrollPoint = CGPointMake(scrollPoint.x, scrollPoint.y + 1); // makes scroll
    [self.textView setContentOffset:scrollPoint animated:NO];
    NSLog(@"%f %f",textView.contentSize.width , textView.contentSize.height);
    
}

-(IBAction)mail:(id)sender{
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/mailbox-finder/id896483380?ls=1&mt=8"]];
    
    
}

@end
