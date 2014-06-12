//usr/bin/env javac -d /tmp $0;java -cp /tmp `basename "$0" .java` $*;exit

import static java.lang.System.out;

public class executable {
    public static void main(String[] args) {
        if(args.length > 0) {
            out.println("arguments:");
            for(String arg : args) {
                out.println("    " + arg);
            }
        } else {
            out.println("missing arguments");
        }
    }
}
