if [ "$1" == "" ]; then
    echo "usage: $0 <proj_root_dir>"
else
    cp dot-clang-format "$1"/.clang-format
fi
