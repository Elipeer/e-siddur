//
//  compass.h
//  e-siddur
//
//  Created by Eli Peer on 9/14/14.
//  Copyright (c) 2014 elipeer. All rights reserved.
//

#import <UIKit/UIKit.h>
# import <CoreLocation/CoreLocation.h>
# import <AudioToolbox/AudioToolbox.h>
@interface compass : UIViewController <CLLocationManagerDelegate>{
    
    CLLocationManager *locationManager;
    
    IBOutlet UILabel *headingLabel;
    IBOutlet UIImageView *kotel;
}

@property (nonatomic, retain) CLLocationManager	*locationManager;

@end
