[ -f ~/.bashrc ] && rm ~/.bashrc
ln bashrc ~/.bashrc
source ~/.bashrc
cat "source ~/.bashrc" >> ~/.bash_profile
