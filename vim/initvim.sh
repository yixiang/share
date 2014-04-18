if [ -f ~/.vimrc ]; then rm ~/.vimrc; fi
ln vimrc ~/.vimrc

if [ -f ~/.vimspell.utf-8.add ]; then rm ~/.vimspell.utf-8.add; fi
ln vimspell.utf-8.add ~/.vimspell.utf-8.add

# create user .vim/
if [ ! -d ~/.vim/syntax ]; then mkdir -p ~/.vim/syntax; fi
if [ ! -d ~/.vim/indent ]; then mkdir -p ~/.vim/indent; fi

if [ -f ~/.vim/syntax/applescript.vim ]; then rm ~/.vim/syntax/applescript.vim; fi
ln applescript.vim ~/.vim/syntax/applescript.vim

if [ -f ~/.vim/syntax/objc.vim ]; then rm ~/.vim/syntax/objc.vim; fi
ln objc.vim ~/.vim/syntax/objc.vim

if [ -f ~/.vim/syntax/objj.vim ]; then rm ~/.vim/syntax/objj.vim; fi
ln objj.vim ~/.vim/syntax/objj.vim

if [ -f ~/.vim/syntax/moscript.vim ]; then rm ~/.vim/syntax/moscript.vim; fi
ln moscript.vim ~/.vim/syntax/moscript.vim

if [ -f ~/.vim/indent/moscript.vim ]; then rm ~/.vim/indent/moscript.vim; fi
ln moscript-indent.vim ~/.vim/indent/moscript.vim

if [ -f ~/.vim/syntax/mkd.vim ]; then rm ~/.vim/syntax/mkd.vim; fi
ln mkd.vim ~/.vim/syntax/mkd.vim

if [ -f ~/.vim/syntax/Wikipedia.vim ]; then rm ~/.vim/syntax/Wikipedia.vim; fi
ln Wikipedia.vim ~/.vim/syntax/Wikipedia.vim

if [ -f ~/.vim/syntax/dokuwiki.vim ]; then rm ~/.vim/syntax/dokuwiki.vim; fi
ln dokuwiki.vim ~/.vim/syntax/dokuwiki.vim

if [ -f ~/.vim/syntax/thrift.vim ]; then rm ~/.vim/syntax/thrift.vim; fi
ln thrift.vim ~/.vim/syntax/thrift.vim
