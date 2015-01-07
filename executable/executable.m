//usr/bin/env clang -framework Foundation -o/tmp/`basename "$0"` $0;/tmp/`basename "$0"` $*;exit

#import <Foundation/Foundation.h>

int main(int argc, char** argv) {
    if(argc > 1) {
        NSLog(@"arguments:\n");
        for(int i = 1; i < argc; ++i) {
            NSLog(@"    %s", argv[i]);
        }
        return 0;
    } else {
        NSLog(@"missing arguments");
        return 1;
    }
}
