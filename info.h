//
//  info.h
//  e-siddur
//
//  Created by Eli Peer on 9/14/14.
//  Copyright (c) 2014 elipeer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface info : UIViewController{
    IBOutlet UIImageView *mail;
    IBOutlet UITextView *textview;
}
-(IBAction)mail:(id)sender;
@end
