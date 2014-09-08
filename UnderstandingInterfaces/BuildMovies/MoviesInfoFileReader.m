//
//  MoviesFileReader.m
//  InterfacesVsAbstractClass
//
//  Created by Pawan Poudel on 9/7/14.
//  Copyright (c) 2014 Pawan Poudel. All rights reserved.
//

#import "MoviesInfoFileReader.h"

@implementation MoviesInfoFileReader

- (NSArray *)readMoviesInfo {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSString *path = [bundle pathForResource:@"movies"
                                      ofType:@"json"];
    
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSDictionary *jsonObjects = [NSJSONSerialization JSONObjectWithData:data
                                                                options:kNilOptions
                                                                  error:nil];
    return jsonObjects[@"movies"];
}

@end
