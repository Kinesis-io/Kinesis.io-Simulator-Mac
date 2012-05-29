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
@property (weak) IBOutlet TrackerView *trackerView;
@property (weak) IBOutlet NSImageView *trackBall;

@property float depth;

@end
