//
//  AppDelegate.h
//  Kinesis Simulator
//
//  Created by Achal Aggarwal on 28/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (unsafe_unretained) IBOutlet NSTabView *tabView;

@property (unsafe_unretained) IBOutlet NSButton *startServerButton;
@property (unsafe_unretained) IBOutlet NSButton *stopServerButton;
@property (unsafe_unretained) IBOutlet NSButton *connectKinectButton;
@property (unsafe_unretained) IBOutlet NSButton *disconnectKinectButton;

- (IBAction)startServer:(id)sender;
- (IBAction)stopServer:(id)sender;
- (IBAction)connectKinect:(id)sender;
- (IBAction)disconnectKinect:(id)sender;


@end
