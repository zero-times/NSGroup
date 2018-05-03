//
//  NSGroup+Extension.m
//  Group
//
//  Created by 梦烙时光 on 2018/5/3.
//  Copyright © 2018年 StarHoa. All rights reserved.
//

#import "NSGroup+Extension.h"

@implementation NSGroup (Extension)

- (NSGroup *(^)(NSGroupMakerBlock))maker {
    return ^NSGroup * (NSGroupMakerBlock block) {
        
        NSGroupMaker * maker = [[NSGroupMaker alloc] initWith:self];
        block(maker);
        return self;
    };
}

+ (NSGroup *(^)(NSGroupMakerBlock))maker {
    
    return ^NSGroup * (NSGroupMakerBlock block) {
        
        NSGroup * group = [[NSGroup alloc] init];
        NSGroupMaker * maker = [[NSGroupMaker alloc] initWith:group];
        block(maker);
        return group;
    };
}

@end

@implementation NSGroupMaker
{
    NSGroup * _group;
}

- (instancetype)initWith:(id)obj {
    
    if (self = [super initWith:obj]) {
        _group = self.result;
    }
    return self;
}

- (NSGroupMaker *(^)(VoidBlock))setGlobalQueue {
    return ^NSGroupMaker * (VoidBlock block) {
    
        [self->_group addGlobalQueue:block];
        return self;
    };
}

- (NSGroupMaker *(^)(VoidBlock))setMainQueue {
    return ^NSGroupMaker * (VoidBlock block) {
        [self->_group mainQueue:block];
        return self;
    };
}

@end
