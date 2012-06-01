//
//  SpeechViewController.h
//  Kinesis Simulator
//
//  Created by Achal Aggarwal on 28/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SpeechViewController : NSViewController
@property (unsafe_unretained) IBOutlet NSTextField *commands;
- (IBAction)sendCommands:(id)sender;

@end
