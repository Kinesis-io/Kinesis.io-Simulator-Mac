//
//  KinesisServer.h
//  Kinesis Simulator
//
//  Created by Achal Aggarwal on 29/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HTTPServer.h"

@interface KinesisServer : HTTPServer

+ (KinesisServer *)shared;

- (void)broadcastSocketMessage:(NSString *)msg;

@end
