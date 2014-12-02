//usr/bin/env c++ -o/tmp/`basename "$0"` $0;/tmp/`basename "$0"` $*;exit

#include <iostream>

int main(int argc, char** argv) {
    if(argc > 1) {
        std::cout << "arguments:\n";
        for(int i = 1; i < argc; ++i) {
            std::cout << "    %s\n" << argv[i] << std::endl;
        }
        return 0;
    } else {
        std::cout << "missing arguments\n";
        return 1;
    }
}
