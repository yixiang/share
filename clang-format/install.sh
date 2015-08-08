if [ "$1" == "" ]; then
    cp dot-clang-format $HOME/.clang-format
    echo "Installed to $HOME/.clang-format"
else
    cp dot-clang-format "$1"/.clang-format
    echo "Installed to $1/.clang-format"
fi
