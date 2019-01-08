[ -f ~/.bashrc ] && rm ~/.bashrc
cp bashrc ~/.bashrc
source ~/.bashrc
echo "source ~/.bashrc" >> ~/.profile
