//
//  AppDelegate.h
//  Kinesis Simulator
//
//  Created by Achal Aggarwal on 28/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
@property (weak) IBOutlet NSButton *startServerButton;
@property (weak) IBOutlet NSButton *stopServerButton;
@property (weak) IBOutlet NSButton *connectKinectButton;
@property (weak) IBOutlet NSButton *disconnectKinectButton;

@property (assign) IBOutlet NSWindow *window;

@property (weak) IBOutlet NSView *handTrackingView;
- (IBAction)startServer:(id)sender;
- (IBAction)stopServer:(id)sender;
- (IBAction)connectKinect:(id)sender;
- (IBAction)disconnectKinect:(id)sender;
@end
