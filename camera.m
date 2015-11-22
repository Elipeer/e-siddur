//
//  camera.m
//  e-siddur
//
//  Created by Eli Peer on 9/14/14.
//  Copyright (c) 2014 elipeer. All rights reserved.
//

#import "camera.h"
#import "ViewController.h"
//iphone screen dimensions
#define SCREEN_WIDTH  self.view.bounds.size.width
#define SCREEN_HEIGTH self.view.bounds.size.height

@interface camera ()

@end

@implementation camera

- (void)viewDidLoad {
    
    stick1.hidden=YES;
    stick2.hidden=YES;
    cancel.hidden=YES;
   
    
       [super viewDidLoad];
    
}


- (BOOL)prefersStatusBarHidden {return YES;}


-(IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil]; // close image picker
}

-(IBAction)takePhoto:(id)sender{
    picker = [[UIImagePickerController alloc] init];
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    picker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModePhoto;
    picker.cameraDevice = UIImagePickerControllerCameraDeviceFront;
    picker.showsCameraControls = NO;
    picker.navigationBarHidden = YES;
    picker.toolbarHidden = YES;
    cancel.hidden = NO;
   

    stick1.hidden=NO;
    stick2.hidden=NO;
    picker.cameraOverlayView = overlayView;
    
    
    [self presentViewController:picker animated:YES completion:nil];
    
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
