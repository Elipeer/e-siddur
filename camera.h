//
//  camera.h
//  e-siddur
//
//  Created by Eli Peer on 9/14/14.
//  Copyright (c) 2014 elipeer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
@interface camera : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>{
    
    UIImagePickerController *picker;
    UIImage *image;
    
   IBOutlet UIView *overlayView;
    IBOutlet UIImageView *stick1;
    IBOutlet UIImageView *stick2;
   IBOutlet UIButton *cancel;
}

-(IBAction)back:(id)sender;
-(IBAction)takePhoto:(id)sender;
@property (strong,nonatomic) ViewController *viewController1;
@end
