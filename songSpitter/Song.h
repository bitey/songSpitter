//
//  Song.h
//  songSpitter
//
//  Created by StopBitingMe on 2/11/13.
//  Copyright (c) 2013 StopBitingMe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Song : NSObject

@property(nonatomic, retain) NSString* artist;
@property(nonatomic, retain) NSString* album;
@property(nonatomic, retain) NSString* year;
@property(nonatomic, retain) NSString* songName;

@end
