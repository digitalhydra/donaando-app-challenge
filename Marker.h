//
//  Marker.h
//  donaando
//
//  Created by jairo mejia on 14/03/15.
//  Copyright (c) 2015 jairo y jhon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
@interface Marker : NSObject <MKAnnotation>

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
@property (nonatomic, readonly,copy) NSString * title;
@property (nonatomic, readonly,copy) NSString * subtitle;

-(id) initInBucaramanga;
-(id) initAddPunto2;
-(id) initAddPunto3;

@end
