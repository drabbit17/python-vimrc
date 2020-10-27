# pull and install vim-plug
PLUG_VIM_FILE=~/.vim/autoload/plug.vim
if [ ! -f "$PLUG_VIM_FILE" ]; then
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim; 
fi

cp vimrc ~/.vimrc

:PlugInstall
