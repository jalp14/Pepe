#import <UIKit/UIKit.h>
#include <sys/utsname.h>


%group MobileGestalt
%hookf(Boolean, "_MGGetBoolAnswer", CFStringRef key) {
#define keyy(key_) CFEqual(key, CFSTR(key_))
    if (keyy("nVh/gwNpy7Jv1NOk00CMrw"))
        return true;
    return %orig;    
}
%end


%ctor {
    @autoreleasepool {
        %init(MobileGestalt);
        %init(_ungrouped);
    }
}
