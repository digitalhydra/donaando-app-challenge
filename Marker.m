//
//  Marker.m
//  donaando
//
//  Created by jairo mejia on 14/03/15.
//  Copyright (c) 2015 jairo y jhon. All rights reserved.
//

#import "Marker.h"

@implementation Marker
//7.11392, -73.1198
-(id) initInBucaramanga{
    self = [super init];
    if (self) {
        _coordinate = CLLocationCoordinate2DMake(7.11395, -73.1198);
        _title = @"Orfanato La Esperanza";
        _subtitle =@"Cra 34 #45-34";
        
    }
    return self;
}
-(id) initAddPunto2{
    self = [super init];
    if (self) {
    _coordinate = CLLocationCoordinate2DMake(7.12383, -73.1178);
    _title = @"Ancianato Las Marias";
    _subtitle =@"Calle 32 #34-34 ";
    }
    return self;
}
-(id) initAddPunto3 {
    self = [super init];
    if (self) {
    _coordinate = CLLocationCoordinate2DMake(7.3382, -73.1188);
    _title = @"Nuevo Horizonte";
    _subtitle =@"Cra 45 #23-45";
    }
    return self;
}
@end
