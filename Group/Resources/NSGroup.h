//
//  NSGroup.h
//  Group
//
//  Created by 梦烙时光 on 2018/5/3.
//  Copyright © 2018年 StarHoa. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^VoidBlock) (void);

@interface NSGroup : NSObject

- (void)addGlobalQueue: (VoidBlock)block;
- (void)mainQueue: (VoidBlock)block;

@end
