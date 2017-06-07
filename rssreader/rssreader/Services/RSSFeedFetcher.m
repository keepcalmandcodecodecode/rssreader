//
//  RSSFeedFetcher.m
//  rssreader
//
//  Created by developer on 6/6/17.
//  Copyright © 2017 developer. All rights reserved.
//

#import "RSSFeedFetcher.h"

@implementation RSSFeedFetcher

- (void)fetchRSSFrom:(NSURL *)rssURL withCompletion:(void (^)(NSData *, NSError *))completionBlock
{
    NSURLRequest *request = [NSURLRequest requestWithURL:rssURL];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request
                                            completionHandler:
                                  ^(NSData *data, NSURLResponse *response, NSError *error) {
                                      if(completionBlock)
                                      {
                                          completionBlock(data,error);
                                      }
                                  }];
    
    [task resume];
}

@end
