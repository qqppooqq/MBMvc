//
// Created by <a href="mailto:wentong@taobao.com">文通</a> on 12-11-14 上午9:20.
//


#import "TBMBSimpleInstanceCommand.h"
#import "TBMBUtil.h"
#import "TBMBMessageReceiver.h"


@implementation TBMBSimpleInstanceCommand {

}
- (void)execute:(id <TBMBNotification>)notification {
    TBMBAutoHandlerNotification(self, notification);
}

+ (NSSet *)listReceiveNotifications {
    return TBMBGetAllCommandHandlerName(self, TBMB_DEFAULT_RECEIVE_HANDLER_NAME);
}


@end