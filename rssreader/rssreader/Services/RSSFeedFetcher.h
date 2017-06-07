//
//  RSSFeedFetcher.h
//  rssreader
//
//  Created by developer on 6/6/17.
//  Copyright © 2017 developer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RSSFeedFetcher : NSObject
- (void)fetchRSSFrom:(NSURL*)rssURL withCompletion:(void (^)(NSData *fetchedData, NSError *error))completionBlock;
@end
