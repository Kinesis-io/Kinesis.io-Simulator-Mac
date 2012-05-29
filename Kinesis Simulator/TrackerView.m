//
//  TrackerView.m
//  Kinesis Simulator
//
//  Created by Achal Aggarwal on 29/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TrackerView.h"

@implementation TrackerView
@synthesize delegate;

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void)viewWillMoveToWindow:(NSWindow *)newWindow {
    [super viewWillMoveToWindow:newWindow];
    NSTrackingArea *trackingArea = [[NSTrackingArea alloc] initWithRect:[self bounds]
                                                                options:NSTrackingMouseMoved+NSTrackingActiveInKeyWindow
                                                                  owner:self
                                                               userInfo:nil];
    [self addTrackingArea:trackingArea];
    [self becomeFirstResponder];
}

- (void) mouseDragged:(NSEvent *)theEvent {
    NSPoint event_location = [theEvent locationInWindow];
    NSPoint local_point = [self convertPoint:event_location fromView:nil];
    if ([delegate respondsToSelector:@selector(trackerView:mouseDraggedToPoint:)]) {
        [delegate trackerView:self mouseDraggedToPoint:local_point];
    }
}

- (void)drawRect:(NSRect)dirtyRect
{
    // Drawing code here.
}

@end
