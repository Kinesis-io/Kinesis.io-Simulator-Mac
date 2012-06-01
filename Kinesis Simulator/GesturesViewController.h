//
//  GesturesViewController.h
//  Kinesis Simulator
//
//  Created by Achal Aggarwal on 28/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface GesturesViewController : NSViewController
@property (unsafe_unretained) IBOutlet NSTextField *originalX;
@property (unsafe_unretained) IBOutlet NSTextField *originalY;
@property (unsafe_unretained) IBOutlet NSTextField *originalZ;

- (void) sendGestureOfType:(NSUInteger) type withJoint:(NSUInteger) joint andDirection:(NSUInteger) direction;

- (IBAction)swipeLeft:(id)sender;
- (IBAction)swipeRight:(id)sender;
- (IBAction)swipeUp:(id)sender;
- (IBAction)swipeDown:(id)sender;

@end
