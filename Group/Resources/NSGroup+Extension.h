//
//  NSGroup+Extension.h
//  Group
//
//  Created by 梦烙时光 on 2018/5/3.
//  Copyright © 2018年 StarHoa. All rights reserved.
//

#import "NSGroup.h"
#import "ParentMaker.h"

@interface NSGroupMaker: ParentMaker

- (NSGroupMaker * (^)(VoidBlock))setGlobalQueue;
- (NSGroupMaker * (^)(VoidBlock))setMainQueue;
typedef void (^NSGroupMakerBlock) (NSGroupMaker * make);

@end

@interface NSGroup (Extension)

- (NSGroup * (^)(NSGroupMakerBlock))maker;
+ (NSGroup * (^)(NSGroupMakerBlock))maker;

@end



