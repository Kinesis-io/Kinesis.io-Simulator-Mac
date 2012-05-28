//
//  KinesisConnection.h
//  Kinesis Simulator
//
//  Created by Achal Aggarwal on 29/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HTTPConnection.h"

@class KinesisWebSocket;

@interface KinesisConnection : HTTPConnection

@property KinesisWebSocket *ws;

@end
