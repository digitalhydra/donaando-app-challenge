//
//  mapUIViewController.h
//  donaando
//
//  Created by jairo mejia on 14/03/15.
//  Copyright (c) 2015 jairo y jhon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface mapUIViewController : UIViewController
<MKMapViewDelegate, CLLocationManagerDelegate>

@property CLLocationManager * locationManager;
@property (weak, nonatomic) IBOutlet MKMapView *map;

@end
