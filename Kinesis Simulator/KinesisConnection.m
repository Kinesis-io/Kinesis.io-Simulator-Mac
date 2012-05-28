//
//  KinesisConnection.m
//  Kinesis Simulator
//
//  Created by Achal Aggarwal on 29/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KinesisConnection.h"
#import "KinesisWebSocket.h"

@implementation KinesisConnection

@synthesize ws;

- (WebSocket *) webSocketForURI:(NSString *)path {
    if([path isEqualToString:@"/service"])
	{
		
		return [[KinesisWebSocket alloc] initWithRequest:request socket:asyncSocket];		
	}
	return [super webSocketForURI:path];
}

@end
