//usr/bin/env xcrun swift -o /tmp/`basename "$0"` $0;/tmp/`basename "$0"` $*;exit

for i in 0..C_ARGC {
    println(C_ARGV[Int(i)])
}
