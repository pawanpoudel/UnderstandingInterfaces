//
//  MoviesBuilderTests.m
//  InterfacesVsAbstractClass
//
//  Created by Pawan Poudel on 9/7/14.
//  Copyright (c) 2014 Pawan Poudel. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MoviesBuilder.h"
#import "FakeMoviesInfoReader.h"
#import "Movie.h"

@interface MoviesBuilderTests : XCTestCase

@end

@implementation MoviesBuilderTests

- (void)testMoviesBuiltContainValuesPresentInRawInfo {
    MoviesBuilder *builder = [[MoviesBuilder alloc] init];
    FakeMoviesInfoReader *fakeReader = [[FakeMoviesInfoReader alloc] init];
    NSArray *movies = [builder buildMoviesWithInfoReader:fakeReader];
    NSArray *rawMoviesInfo = [fakeReader readMoviesInfo];
    
    Movie *movie1 = movies[0];
    NSDictionary *rawMovieInfo1 = rawMoviesInfo[0];
    XCTAssertEqualObjects(movie1.movieID, rawMovieInfo1[@"id"],
        "1st movie's ID should be the ID in 1st raw dictionary");
    XCTAssertEqualObjects(movie1.title, rawMovieInfo1[@"title"],
        "1st movie's title should be the title in 1st raw dictionary");
    
    Movie *movie2 = movies[1];
    NSDictionary *rawMovieInfo2 = rawMoviesInfo[1];
    XCTAssertEqualObjects(movie2.movieID, rawMovieInfo2[@"id"],
        "2nd movie's ID should be the ID in 2nd raw dictionary");
    XCTAssertEqualObjects(movie2.title, rawMovieInfo2[@"title"],
        "2nd movie's title should be the title in 2nd raw dictionary");
}

@end
