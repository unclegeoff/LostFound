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
@synthesize dict;

- (id)initWithJSONDictionary:(NSDictionary *)jsonDictionary{
    if(self = [self init]){
        user = [jsonDictionary objectForKey:@"email"];
        itemName = [jsonDictionary objectForKey:@"Item"];
        description = [jsonDictionary objectForKey:@"Description"];
        tags = [jsonDictionary objectForKey:@"Tags"];
        location = [jsonDictionary objectForKey:@"Location"];
        dict = [NSMutableDictionary dictionary];
        [dict setValue:user forKey:@"email"];
        [dict setValue:itemName forKey:@"Item"];
        [dict setValue:description forKey:@"Description"];
        [dict setValue:tags forKey:@"Tags"];
        [dict setValue:location forKey:@"Location"];
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
