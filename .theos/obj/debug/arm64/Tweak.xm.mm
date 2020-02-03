#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>
#include <sys/utsname.h>



#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif




#line 5 "Tweak.xm"

__unused static Boolean (*_logos_orig$MobileGestalt$lookup$_MGGetBoolAnswer)(CFStringRef key); __unused static Boolean _logos_function$MobileGestalt$lookup$_MGGetBoolAnswer(CFStringRef key) {
#define keyy(key_) CFEqual(key, CFSTR(key_))
    if (keyy("nVh/gwNpy7Jv1NOk00CMrw"))
        return true;
    return _logos_orig$MobileGestalt$lookup$_MGGetBoolAnswer(key);    
}



static __attribute__((constructor)) void _logosLocalCtor_36cf86a9(int __unused argc, char __unused **argv, char __unused **envp) {
    @autoreleasepool {
        { MSHookFunction((void *)MSFindSymbol(NULL, "_MGGetBoolAnswer"), (void *)&_logos_function$MobileGestalt$lookup$_MGGetBoolAnswer, (void **)&_logos_orig$MobileGestalt$lookup$_MGGetBoolAnswer);}
        {}
    }
}
