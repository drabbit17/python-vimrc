# pull and install vim-plug
PLUG_VIM_FILE=~/.vim/autoload/plug.vim
if [ ! -f "$PLUG_VIM_FILE" ]; then
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim; 
fi

cp vimrc ~/.vimrc

vim -E -s -u "~/.vimrc" +PlugInstall +qall

# these are needed for the autocomplete plugin to work
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt update && sudo apt install build-essential cmake vim python3-dev mono-complete golang-go nodejs npm

cd ~/.vim/plugged/YouCompleteMe
python3 install.py --all
