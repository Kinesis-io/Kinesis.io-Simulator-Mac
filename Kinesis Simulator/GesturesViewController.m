//
//  GesturesViewController.m
//  Kinesis Simulator
//
//  Created by Achal Aggarwal on 28/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "GesturesViewController.h"

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

- (IBAction)swipeLeft:(id)sender {
    NSLog(@"SwipeLeft");
}

- (IBAction)swipeRight:(id)sender {
    NSLog(@"SwipeRight");
}

- (IBAction)swipeUp:(id)sender {
    NSLog(@"SwipeUp");
}

- (IBAction)swipeDown:(id)sender {
    NSLog(@"Swipedown");
}
@end
