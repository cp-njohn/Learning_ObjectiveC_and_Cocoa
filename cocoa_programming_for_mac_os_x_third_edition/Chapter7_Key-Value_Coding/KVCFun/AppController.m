//
//  AppController.m
//  KVCFun
//
//  Created by Bryan Woods on 3/8/10.
//  Copyright 2010 Apple Inc. All rights reserved.
//

#import "AppController.h"


@implementation AppController

- (id)init
{
	[super init];
	[self setValue:[NSNumber numberWithInt:5]
			forKey:@"fido"];
	NSNumber *n = [self valueForKey:@"fido"];
	NSLog(@"fido = %@", n);
	return self;
}

- (int)fido
{
	NSLog(@"-fido is returning %d", fido);
	return fido;
}

- (void)setFido:(int)x
{
	NSLog(@"-setFido: is called with %d", x);
	fido = x;
}

- (IBAction)incrementFido:(id)sender
{
	[self willChangeValueForKey:@"fido"];
	fido++;
	NSLog(@"fido is now %d", fido);
	[self didChangeValueForKey:@"fido"];
}

@end
