.PHONY: all nvim zsh git

all: nvim zsh git

nvim:
	brew install neovim --HEAD
	brew install ripgrep fzf
	rm -f ~/.config/nvim/init.vim
	rm -rf ~/.config/nvim
	rm -rf ~/.vsnip
	ln -s $(PWD)/vim/.vim ~/.config/nvim
	ln -s $(PWD)/vim/.vimrc ~/.config/nvim/init.vim
	ln -s $(PWD)/.vsnip ~/.vsnip
	nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
	nvim --headless -c 'TSInstallSync maintained' -c 'q'

zsh:
	rm -f ~/.zshrc
	ln -s $PWD/zsh/.zshrc ~/.zshrc

git: nvim
	brew install git-delta gnupg
	gpg --import ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/gpg-keys/private-key.asc
	rm -f ~/.gitconfig
	ln -s $(PWD)/git/.gitconfig ~/.gitconfig
