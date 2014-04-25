//
//  FirstViewController.m
//  URI  Navigation
//
//  Created by Raphael Conte on 2/27/14.
//  Copyright (c) 2014 Raphael Conte. All rights reserved.
//

#import "FirstViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@implementation FirstViewController {
    GMSMapView *mapView_;
}

- (void)viewDidLoad {
    GMSCameraPosition *URIpos = [GMSCameraPosition cameraWithLatitude:41.4854
                                                            longitude:-71.5296
                                                                 zoom:15];
    mapView_ = [GMSMapView mapWithFrame:self.view.bounds camera:URIpos];
    mapView_.myLocationEnabled = YES;
    [mapView_ setMinZoom:15 maxZoom:18];
    [self.view insertSubview:mapView_ atIndex:0];
    
    UITextField *fromField = [[UITextField alloc] initWithFrame:CGRectMake(25, 30, 250, 40)];
    fromField.text=@"From";
    fromField.borderStyle = UITextBorderStyleRoundedRect;
    fromField.backgroundColor=[UIColor whiteColor];
    fromField.enabled = YES;
    
    UITextField *toField = [[UITextField alloc] initWithFrame:CGRectMake(25, 70, 250, 40)];
    toField.text=@"To";
    toField.borderStyle = UITextBorderStyleRoundedRect;
    toField.backgroundColor=[UIColor whiteColor];
    toField.enabled = YES;
    
    [self.view addSubview:fromField];
    [self.view addSubview:toField];
    
    /* Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(-33.86, 151.20);
    marker.title = @"Sydney";
    marker.snippet = @"Australia";
    marker.map = mapView_;
     */
}

@end