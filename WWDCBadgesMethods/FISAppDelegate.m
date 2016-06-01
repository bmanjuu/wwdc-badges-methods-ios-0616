//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

-(NSString *)badgeForSpeaker:(NSString *)speaker{
    
    NSString *speakerBadge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    
    return speakerBadge;
}



-(NSArray *)badgesForSpeakers:(NSArray *)speakers{
    
    NSMutableArray *speakerBadges = [[NSMutableArray alloc] init];
    
    for(NSUInteger i = 0; i < [speakers count]; i++){
        NSString *speakerGreeting = [self badgeForSpeaker:speakers[i]];
        [speakerBadges addObject:speakerGreeting];
    }
    
    return speakerBadges;
}



-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
    
    NSMutableArray *greetingAndRoomAssignment = [[NSMutableArray alloc] init];
    
    for(NSUInteger i = 0; i < [speakers count]; i++){
        NSInteger roomNumber = i + 1;
        NSString *welcomeSpeaker = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %li.", speakers[i], roomNumber];
        [greetingAndRoomAssignment addObject:welcomeSpeaker];
    }
    
    return greetingAndRoomAssignment;
}

@end
