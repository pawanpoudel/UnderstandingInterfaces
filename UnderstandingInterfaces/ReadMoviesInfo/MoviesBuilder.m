//
//  MoviesBuilder.m
//  InterfacesVsAbstractClass
//
//  Created by Pawan Poudel on 9/7/14.
//  Copyright (c) 2014 Pawan Poudel. All rights reserved.
//

#import "MoviesBuilder.h"
#import "Movie.h"

@implementation MoviesBuilder

- (NSArray *)buildMoviesWithInfoReader:(id<MoviesInfoReader>)infoReader {
    NSArray *info = [infoReader readMoviesInfo];
    NSMutableArray *movies = [NSMutableArray arrayWithCapacity:info.count];
    
    for (NSDictionary *movieInfo in info) {
        Movie *movie = [[Movie alloc] init];
        movie.movieID = movieInfo[@"id"];
        movie.title = movieInfo[@"title"];
        [movies addObject:movie];
    }
    
    return [movies copy];
}

@end