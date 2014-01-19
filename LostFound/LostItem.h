//
//  LostItem.h
//  LostFound
//
//  Created by Geoffery Gilles on 1/18/14.
//  Copyright (c) 2014 Geoffery Gilles. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LostItem : NSObject

- (id)initWithJSONDictionary:(NSDictionary *)jsonDictionary;
- (id)initNewLostItem;
- (NSString *)getItemName;
- (NSString *)getUserName;

@property NSString *user;
@property NSString *itemName;
@property NSString *description;
@property NSArray *tags;
@property NSString *location;
@property NSString *date;
@property NSString *match_id;
@property NSDictionary *dict;

@end
