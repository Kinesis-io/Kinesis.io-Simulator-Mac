//
//  HandTrackingViewController.h
//  Kinesis Simulator
//
//  Created by Achal Aggarwal on 28/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "TrackerView.h"

@interface HandTrackingViewController : NSViewController <TrackerViewDelegate>
@property (unsafe_unretained) IBOutlet TrackerView *trackerView;
@property (unsafe_unretained) IBOutlet NSImageView *trackBall;

@property float depth;

@end
