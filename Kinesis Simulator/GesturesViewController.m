//
//  GesturesViewController.m
//  Kinesis Simulator
//
//  Created by Achal Aggarwal on 28/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GesturesViewController.h"
#import "KinesisServer.h"

@interface GesturesViewController ()

@end

@implementation GesturesViewController
@synthesize originalX;
@synthesize originalY;
@synthesize originalZ;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}


- (void) sendGestureOfType:(NSUInteger) type withJoint:(NSUInteger) joint andDirection:(NSUInteger) direction {
    NSString *message = [NSString stringWithFormat:@"{\"gestures\":[{\"type\":%d,\"joints\":[%d],\"direction\":%d,\"origin\":{\"x\":%@,\"y\":%@,\"z\":%@}}],\"cursor\":{\"x\":50,\"y\":50,\"z\":50}}", type, joint, direction, [[self originalX] stringValue], [[self originalY] stringValue], [[self originalZ] stringValue]];
    [[KinesisServer shared] broadcastSocketMessage:message];
}

- (IBAction)swipeLeft:(id)sender {
    switch ([sender tag]) {
        case 0:
            [self sendGestureOfType:0 withJoint:8 andDirection:0];
            break;
        case 1:
            [self sendGestureOfType:0 withJoint:0 andDirection:0];
            break;
    }
}

- (IBAction)swipeRight:(id)sender {
    switch ([sender tag]) {
        case 0:
            [self sendGestureOfType:0 withJoint:8 andDirection:1];
            break;
        case 1:
            [self sendGestureOfType:0 withJoint:0 andDirection:1];
            break;
    }

}

- (IBAction)swipeUp:(id)sender {
    switch ([sender tag]) {
        case 0:
            [self sendGestureOfType:0 withJoint:8 andDirection:2];
            break;
        case 1:
            [self sendGestureOfType:0 withJoint:0 andDirection:2];
            break;
    }

}

- (IBAction)swipeDown:(id)sender {
    switch ([sender tag]) {
        case 0:
            [self sendGestureOfType:0 withJoint:8 andDirection:3];
            break;
        case 1:
            [self sendGestureOfType:0 withJoint:0 andDirection:3];
            break;
    }

}
@end
