//
//  mapUIViewController.m
//  donaando
//
//  Created by jairo mejia on 14/03/15.
//  Copyright (c) 2015 jairo y jhon. All rights reserved.
//

#import "mapUIViewController.h"
#import "Marker.h"

@interface mapUIViewController ()

@end

@implementation mapUIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _map.delegate = self;
    
    Marker * bucaramanga = [[Marker alloc] initInBucaramanga];
    Marker * punto2 = [[Marker alloc] initAddPunto2];
    Marker * punto3 = [[Marker alloc] initAddPunto3];
    [_map addAnnotation:bucaramanga];
    [_map addAnnotation:punto2];
    [_map addAnnotation:punto3];
    
    
    
    _locationManager= [[CLLocationManager alloc] init];
    _locationManager.delegate = self;
    [_locationManager requestAlwaysAuthorization];
    [_map setShowsUserLocation:YES];
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance([userLocation coordinate], 5, 5);
    
    [_map setRegion:region animated:YES];
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
