//
//  GesturesViewController.h
//  Kinesis Simulator
//
//  Created by Achal Aggarwal on 28/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface GesturesViewController : NSViewController
@property (weak) IBOutlet NSTextField *originalX;
@property (weak) IBOutlet NSTextField *originalY;
@property (weak) IBOutlet NSTextField *originalZ;

- (IBAction)swipeLeft:(id)sender;
- (IBAction)swipeRight:(id)sender;
- (IBAction)swipeUp:(id)sender;
- (IBAction)swipeDown:(id)sender;

@end
