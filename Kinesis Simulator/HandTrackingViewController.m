//
//  HandTrackingViewController.m
//  Kinesis Simulator
//
//  Created by Achal Aggarwal on 28/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HandTrackingViewController.h"
#import "KinesisServer.h"

@interface HandTrackingViewController ()

@end

@implementation HandTrackingViewController
@synthesize trackerView;
@synthesize trackBall;

@synthesize depth;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void) trackerView:(TrackerView *)_trackerView mouseDraggedToPoint:(NSPoint) _point {
    
    NSPoint center = CGPointMake(_point.x - 7, _point.y - 7);
    
    [[self trackBall] setFrameOrigin:center];
    
    
    if (_point.x > 200 || _point.y > 200 || _point.x < 0 || _point.y < 0)
    {
        return;
    }
    
    NSString *message = [NSString stringWithFormat:@"{\"cursor\":{\"x\":%f,\"y\":%f,\"z\":%f}}", _point.x/2, 100 - _point.y/2, depth];
    
    [[KinesisServer shared] broadcastSocketMessage:message];
}

@end
