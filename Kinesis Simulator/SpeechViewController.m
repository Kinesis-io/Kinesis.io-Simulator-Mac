//
//  SpeechViewController.m
//  Kinesis Simulator
//
//  Created by Achal Aggarwal on 28/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SpeechViewController.h"
#import "KinesisServer.h"

@interface SpeechViewController ()

@end

@implementation SpeechViewController
@synthesize commands;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (IBAction)sendCommands:(id)sender {
    [[KinesisServer shared] broadcastSocketMessage:[NSString stringWithFormat:@"{\"gestures\":[{\"type\":4,\"command\":\"%@\"}}],\"cursor\":{{\"x\":50,\"y\":50,\"z\":50}}}}", [[self commands] stringValue]]];
}
@end
