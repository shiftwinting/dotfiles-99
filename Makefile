.PHONY: all nvim zsh git

all: nvim zsh git

nvim:
	brew install neovim --HEAD
	brew install ripgrep
	rm -f ~/.config/nvim/init.vim
	rm -rf ~/.config/nvim
	ln -s $PWD/vim/.vim ~/.config/nvim
	ln -s $PWD/vim/.vimrc ~/.config/nvim/init.vim
	nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
	nvim --headless -c 'TSInstallSync maintained' -c 'q'

zsh:
	rm -f ~/.zshrc
	ln -s $PWD/zsh/.zshrc ~/.zshrc

git: nvim
	brew install git-delta gnupg
	gpg --import ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/gpg-keys/private-key.asc
	ln -s $PWD/.gitconfig ~/.config/.gitconfig