//
//  FakeMoviesInfoReader.m
//  InterfacesVsAbstractClass
//
//  Created by Pawan Poudel on 9/7/14.
//  Copyright (c) 2014 Pawan Poudel. All rights reserved.
//

#import "FakeMoviesInfoReader.h"

@implementation FakeMoviesInfoReader

- (NSArray *)readMoviesInfo {
    NSDictionary *fakeMovie1 = @{@"id": @1,
                                 @"title": @"Fake movie 1"};
    
    NSDictionary *fakeMovie2 = @{@"id": @2,
                                 @"title": @"Fake movie 2"};
    
    return @[fakeMovie1, fakeMovie2];
}

@end
