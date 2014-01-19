//
//  LostItem.m
//  LostFound
//
//  Created by Geoffery Gilles on 1/18/14.
//  Copyright (c) 2014 Geoffery Gilles. All rights reserved.
//

#import "LostItem.h"

@implementation LostItem

@synthesize user;
@synthesize itemName;
@synthesize description;
@synthesize tags;
@synthesize location;
@synthesize date;
@synthesize match_id;
@synthesize dict;

- (id)initWithJSONDictionary:(NSDictionary *)jsonDictionary{
    if(self = [self init]){
        user = [jsonDictionary objectForKey:@"User"];
        itemName = [jsonDictionary objectForKey:@"Item"];
        description = [jsonDictionary objectForKey:@"Description"];
        tags = [jsonDictionary objectForKey:@"Tags"];
        location = [jsonDictionary objectForKey:@"Found_Location"];
        date = [jsonDictionary objectForKey:@"Date_Created"];
        match_id = [jsonDictionary objectForKey:@"PMatch_id"];
        dict = [NSMutableDictionary dictionary];
        [dict setValue:user forKey:@"User"];
        [dict setValue:itemName forKey:@"Item"];
        [dict setValue:description forKey:@"Description"];
        [dict setValue:tags forKey:@"Tags"];
        [dict setValue:location forKey:@"Found_Location"];
        [dict setValue:date forKey:@"Date_Created"];
        [dict setValue:match_id forKey:@"PMatch_id"];
    }
    return self;
}

- (id)initNewLostItem{
    
    return self;
}

- (NSString *)getItemName{
    return itemName;
}

- (NSString *)getUserName{
    return user;
}

@end
