//
//  KinesisServer.m
//  Kinesis Simulator
//
//  Created by Achal Aggarwal on 29/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KinesisServer.h"
#import "KinesisConnection.h"
#import "WebSocket.h"

@implementation KinesisServer

+ (KinesisServer *)shared {
    static KinesisServer *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[KinesisServer alloc] init];
        [sharedInstance setConnectionClass:[KinesisConnection class]];
        [sharedInstance setPort:2011];
    });
    return sharedInstance;
}

- (void)broadcastSocketMessage:(NSString *)msg {
    for (WebSocket *soc in webSockets) {
        [soc sendMessage:msg];
    }
}

@end
