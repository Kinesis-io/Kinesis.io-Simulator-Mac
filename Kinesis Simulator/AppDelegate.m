//
//  AppDelegate.m
//  Kinesis Simulator
//
//  Created by Achal Aggarwal on 28/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "HTTPServer.h"
#import "KinesisServer.h"

@implementation AppDelegate

@synthesize startServerButton = _startServerButton;
@synthesize stopServerButton = _stopServerButton;
@synthesize connectKinectButton = _connectKinectButton;
@synthesize disconnectKinectButton = _disconnectKinectButton;
@synthesize window = _window;
@synthesize tabView = _tabView;


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [[self window] setAcceptsMouseMovedEvents:YES];
}

- (IBAction)startServer:(id)sender {
    //start server
    [[self startServerButton] setEnabled:NO];
    [[self stopServerButton] setEnabled:YES];
    [[self connectKinectButton] setEnabled:YES];
    
	NSError *error;
	if(![[KinesisServer shared] start:&error]) {
        NSLog(@"Error starting server");
    }
}

- (IBAction)stopServer:(id)sender {
    [[self startServerButton] setEnabled:YES];
    [[self stopServerButton] setEnabled:NO];
    [self disconnectKinect:nil];
    [[self connectKinectButton] setEnabled:NO];

    //stop server
    [[KinesisServer shared] stop];
}

- (IBAction)connectKinect:(id)sender {
    [[KinesisServer shared] broadcastSocketMessage:@"{\"Kinect\":\"Connected\"}"];
    [[self connectKinectButton] setEnabled:NO];
    [[self disconnectKinectButton] setEnabled:YES];
    
    if ([[self tabView] isHidden]) {
        [[self tabView] setHidden:NO];
    }
}

- (IBAction)disconnectKinect:(id)sender {
    [[KinesisServer shared] broadcastSocketMessage:@"{\"Kinect\":\"Disconnected\"}"];
    [[self disconnectKinectButton] setEnabled:NO];
    [[self connectKinectButton] setEnabled:YES];
    
    if (![[self tabView] isHidden]) {
        [[self tabView] setHidden:YES];
    }
}
@end
