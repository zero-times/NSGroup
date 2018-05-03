//
//  ViewController.m
//  Group
//
//  Created by 梦烙时光 on 2018/5/3.
//  Copyright © 2018年 StarHoa. All rights reserved.
//

#import "ViewController.h"
#import "NSGroup+Extension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSGroup.maker(^(NSGroupMaker * maker) {
        maker
        .setGlobalQueue(^(void) {
            for (int i = 0; i < 10; i++) {
                NSLog(@"group1 = %d, %@", i, [NSThread currentThread]);
            }
        })
        .setGlobalQueue(^(void) {
            for (int i = 0; i < 10; i++) {
                NSLog(@"group2 = %d, %@", i, [NSThread currentThread]);
            }
        })
        .setGlobalQueue(^(void) {
            for (int i = 0; i < 10; i++) {
                NSLog(@"group3 = %d, %@", i, [NSThread currentThread]);
            }
        })
        .setGlobalQueue(^(void) {
            for (int i = 0; i < 10; i++) {
                NSLog(@"group4 = %d, %@", i, [NSThread currentThread]);
            }
        })
        .setMainQueue(^(void) {
            NSLog(@"耗时操作执行完毕 %@", [NSThread currentThread]);
        });
    });
  
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
