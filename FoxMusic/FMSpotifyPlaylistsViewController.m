//
//  FMSpotifyPlaylistsViewController.m
//  FoxMusic
//
//  Created by Lasse Lauwerys on 1/07/24.
//  Copyright (c) 2024 Lasse Lauwerys. All rights reserved.
//

#import "FMSpotifyPlaylistsViewController.h"
#import "FMSpotifyPlaylistArray.h"

@implementation FMSpotifyPlaylistsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    appDelegate = [[UIApplication sharedApplication] delegate];
}

- (void)viewDidAppear:(BOOL)animated
{
    FMSpotifyClient *spotifyClient = appDelegate.spotifyClient;
    
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        @try {
        NSError *error;
            [spotifyClient getUserPlaylistsAndWhenSuccess:^(FMSpotifyPlaylistArray *playlists){
                for (FMSpotifyPlaylist *playlist in playlists) {
                    NSLog(@"title: %@, description: %@", playlist.name, playlist.description);
                }
            } whenError:^(NSError *error){
                [appDelegate displayError:error];
            }];
        if (error) [appDelegate displayError:error];
        } @catch (NSException *ex) {
            
        }
//    });
//    }
//    @catch (NSException *exception) {
//        [appDelegate displayException:exception];
//    }
}

@end
