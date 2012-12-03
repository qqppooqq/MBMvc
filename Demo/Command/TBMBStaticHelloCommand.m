//
// Created by <a href="mailto:wentong@taobao.com">文通</a> on 12-11-14 上午9:49.
//


#import "TBMBStaticHelloCommand.h"
#import "TBMBTestService.h"
#import "TBMBGlobalFacade.h"


@implementation TBMBStaticHelloCommand

+ (void)$$staticHello:(id <TBMBNotification>)notification name:(NSString *)name {
    NSLog(@"command Thread:[%@] isMain[%d]", [NSThread currentThread], [NSThread isMainThread]);
    [TBMBTestService helloWorld:name result:^(NSString *ret) {
        NSLog(@"command Callback Thread:[%@] isMain[%d]", [NSThread currentThread], [NSThread isMainThread]);
        TBMBGlobalSendTBMBNotification([notification createNextNotificationForSEL:@selector
        ($$receiveStaticHello:title:)                                    withBody:ret]
        );
    }];
}

@end