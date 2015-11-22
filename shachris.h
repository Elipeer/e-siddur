//
//  shachris.h
//  e-siddur
//
//  Created by Eli Peer on 9/22/14.
//  Copyright (c) 2014 elipeer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface shachris : UIViewController{
    
    NSTimer *scrollingTimer;
    NSTimer *new1;
    IBOutlet UITextView *textView;

    IBOutlet UIButton *but;
    IBOutlet UIBarButtonItem *stopscroll;
  }


-(IBAction)mail:(id)sender;

- (void) autoscrollTimerFired;


@property (nonatomic , retain) IBOutlet UITextView *textView;

@end
