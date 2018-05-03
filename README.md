
用到链式Git:
https://github.com/ZHShare/OC_UIExtension.git
======================================================
使用代码:
import ...

 
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
  

打印信息:
...
2018-05-03 11:18:26.935784+0800 Group[2165:222706] group4 = 4, <NSThread: 0x608000078a40>{number = 6, name = (null)}
2018-05-03 11:18:26.935948+0800 Group[2165:222705] group1 = 4, <NSThread: 0x608000078800>{number = 3, name = (null)}
2018-05-03 11:18:26.936125+0800 Group[2165:222707] group3 = 5, <NSThread: 0x60400007b400>{number = 5, name = (null)}
2018-05-03 11:18:26.936457+0800 Group[2165:222708] group2 = 5, <NSThread: 0x60c00026b180>{number = 4, name = (null)}
2018-05-03 11:18:26.936624+0800 Group[2165:222706] group4 = 5, <NSThread: 0x608000078a40>{number = 6, name = (null)}
2018-05-03 11:18:26.936784+0800 Group[2165:222705] group1 = 5, <NSThread: 0x608000078800>{number = 3, name = (null)}
2018-05-03 11:18:26.936952+0800 Group[2165:222707] group3 = 6, <NSThread: 0x60400007b400>{number = 5, name = (null)}
2018-05-03 11:18:26.937284+0800 Group[2165:222708] group2 = 6, <NSThread: 0x60c00026b180>{number = 4, name = (null)}
2018-05-03 11:18:26.937475+0800 Group[2165:222706] group4 = 6, <NSThread: 0x608000078a40>{number = 6, name = (null)}
2018-05-03 11:18:26.937621+0800 Group[2165:222705] group1 = 6, <NSThread: 0x608000078800>{number = 3, name = (null)}
2018-05-03 11:18:26.937860+0800 Group[2165:222707] group3 = 7, <NSThread: 0x60400007b400>{number = 5, name = (null)}
2018-05-03 11:18:26.938154+0800 Group[2165:222708] group2 = 7, <NSThread: 0x60c00026b180>{number = 4, name = (null)}
2018-05-03 11:18:26.938321+0800 Group[2165:222706] group4 = 7, <NSThread: 0x608000078a40>{number = 6, name = (null)}
2018-05-03 11:18:26.938448+0800 Group[2165:222705] group1 = 7, <NSThread: 0x608000078800>{number = 3, name = (null)}
2018-05-03 11:18:26.938623+0800 Group[2165:222707] group3 = 8, <NSThread: 0x60400007b400>{number = 5, name = (null)}
2018-05-03 11:18:26.938941+0800 Group[2165:222708] group2 = 8, <NSThread: 0x60c00026b180>{number = 4, name = (null)}
2018-05-03 11:18:26.939096+0800 Group[2165:222706] group4 = 8, <NSThread: 0x608000078a40>{number = 6, name = (null)}
2018-05-03 11:18:26.939261+0800 Group[2165:222705] group1 = 8, <NSThread: 0x608000078800>{number = 3, name = (null)}
2018-05-03 11:18:26.939461+0800 Group[2165:222707] group3 = 9, <NSThread: 0x60400007b400>{number = 5, name = (null)}
2018-05-03 11:18:26.939596+0800 Group[2165:222708] group2 = 9, <NSThread: 0x60c00026b180>{number = 4, name = (null)}
2018-05-03 11:18:26.939814+0800 Group[2165:222706] group4 = 9, <NSThread: 0x608000078a40>{number = 6, name = (null)}
2018-05-03 11:18:26.939988+0800 Group[2165:222705] group1 = 9, <NSThread: 0x608000078800>{number = 3, name = (null)}
2018-05-03 11:18:26.941196+0800 Group[2165:222535] 耗时操作执行完毕 <NSThread: 0x6040000681c0>{number = 1, name = main}




======================================================
