//
//  MoviesInfoReader.h
//  InterfacesVsAbstractClass
//
//  Created by Pawan Poudel on 9/7/14.
//  Copyright (c) 2014 Pawan Poudel. All rights reserved.
//

@protocol MoviesInfoReader <NSObject>

@required
- (NSArray *)readMoviesInfo;

@end
