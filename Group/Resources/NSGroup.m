//
//  NSGroup.m
//  Group
//
//  Created by 梦烙时光 on 2018/5/3.
//  Copyright © 2018年 StarHoa. All rights reserved.
//

#import "NSGroup.h"

@implementation NSGroup
{
    dispatch_group_t _group;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        _group = dispatch_group_create();
    }
    return self;
}

- (void)addGlobalQueue: (VoidBlock)block {
    
    dispatch_group_async(_group, dispatch_get_global_queue(0, 0), block);
}

- (void)mainQueue: (VoidBlock)block {
    
    dispatch_group_notify(_group, dispatch_get_main_queue(), block);
}


@end
