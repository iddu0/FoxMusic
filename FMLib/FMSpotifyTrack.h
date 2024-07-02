//
//  FMSpotifyTrack.h
//  FoxMusic
//
//  Created by Lasse Lauwerys on 2/07/24.
//  Copyright (c) 2024 Lasse Lauwerys. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FMSpotifyTrack : NSObject

@property NSString *name;

- (id)initWithDictionary:(NSDictionary *)dictionary;

+ (FMSpotifyTrack *)trackFromDictionary:(NSDictionary *const)dictionary;

@end