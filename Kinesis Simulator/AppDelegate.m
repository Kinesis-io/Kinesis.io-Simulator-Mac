//
//  AppDelegate.m
//  Kinesis Simulator
//
//  Created by Achal Aggarwal on 28/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize startServerButton = _startServerButton;
@synthesize stopServerButton = _stopServerButton;
@synthesize connectKinectButton = _connectKinectButton;
@synthesize disconnectKinectButton = _disconnectKinectButton;
@synthesize window = _window;
@synthesize handTrackingView = _handTrackingView;
@synthesize tabView = _tabView;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    
}

- (IBAction)startServer:(id)sender {
    //start server
    
    [[self startServerButton] setEnabled:NO];
    [[self stopServerButton] setEnabled:YES];
    [[self connectKinectButton] setEnabled:YES];
    
    
}

- (IBAction)stopServer:(id)sender {
    [[self startServerButton] setEnabled:YES];
    [[self stopServerButton] setEnabled:NO];
    
    [self disconnectKinect:nil];
    
    [[self connectKinectButton] setEnabled:NO];

    //disconnect kinect
    //stop server
}

- (IBAction)connectKinect:(id)sender {
    [[self connectKinectButton] setEnabled:NO];
    [[self disconnectKinectButton] setEnabled:YES];
    
    if ([[self tabView] isHidden]) {
        [[self tabView] setHidden:NO];
    }
    //connect Kinect
}

- (IBAction)disconnectKinect:(id)sender {
    [[self disconnectKinectButton] setEnabled:NO];
    [[self connectKinectButton] setEnabled:YES];
    
    if (![[self tabView] isHidden]) {
        [[self tabView] setHidden:YES];
    }
    
    //disconnect Kinect
}
@end
