if [ -f '/Applications/MacVim.app/Contents/MacOS/Vim' ]; then
echo '/Applications/MacVim.app/Contents/MacOS/Vim $*' > /usr/bin/vim
chmod +x /usr/bin/vim
else
echo 'Please install MacVim, https://github.com/b4winckler/macvim'
echo 'Opening website to download in 3 seconds...'
sleep 1
echo 'Opening website to download in 2 seconds...'
sleep 1
echo 'Opening website to download in 1 second...'
sleep 1
open 'https://github.com/b4winckler/macvim'
fi
