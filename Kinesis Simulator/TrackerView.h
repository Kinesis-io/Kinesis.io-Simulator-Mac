//
//  TrackerView.h
//  Kinesis Simulator
//
//  Created by Achal Aggarwal on 29/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class TrackerView;

@protocol TrackerViewDelegate <NSObject>
@optional
- (void) trackerView:(TrackerView *)_trackerView mouseDraggedToPoint:(NSPoint) _point;
@end

@interface TrackerView : NSView

@property IBOutlet id<TrackerViewDelegate> delegate;

@end
