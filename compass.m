//
//  compass.m
//  e-siddur
//
//  Created by Eli Peer on 9/14/14.
//  Copyright (c) 2014 elipeer. All rights reserved.
//

#import "compass.h"

@interface compass ()

@end

@implementation compass

@synthesize locationManager;


- (void)viewDidLoad {
   
    
    locationManager=[[CLLocationManager alloc] init];
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    locationManager.delegate=self;
    //Start the compass updates.
    [locationManager startUpdatingHeading];
    kotel.hidden=YES;
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


- (BOOL)prefersStatusBarHidden {
    return YES;
}


/*#pragma mark - Navigation


// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading
{    
    float mHeading = newHeading.magneticHeading;
    
    if ((mHeading >= 315) || (mHeading <= 45)) {
        [headingLabel setText:@"North"];
        kotel.hidden=YES;
    }else if ((mHeading > 45) && (mHeading <= 135)) {
        [headingLabel setText:@"East"];
       

        kotel.hidden=NO;
    }else if ((mHeading > 135) && (mHeading <= 225)) {
        [headingLabel setText:@"South"];
        kotel.hidden=YES;
    }else if ((mHeading > 225) && (mHeading <= 315)) {
        [headingLabel setText:@"West"];
        kotel.hidden=YES;
    }
 

}
@end
