#!/bin/bash

choice () {
    local choice=$1
    if [[ ${opts[choice]} ]] # toggle
    then
        opts[choice]=
    else
        opts[choice]=+
    fi
}

read -p 'WARNING: This will make you lost all your current configuration for the selected options. Press [Enter] to continue...'
PS3='Please enter your choice: '
while :
do
    clear
    options=("nvim ${opts[1]}" "karabiner ${opts[2]}" "zshrc ${opts[3]}" "Done")
    select opt in "${options[@]}"
    do
        case $opt in
            "nvim ${opts[1]}")
                choice 1
                break
                ;;
            "karabiner ${opts[2]}")
                choice 2
                break
                ;;
            "zshrc ${opts[3]}")
                choice 3
                break
                ;;
            "Done")
                break 2
                ;;
            *) printf '%s\n' 'invalid option';;
        esac
    done
done

for opt in "${!opts[@]}"
do
    if [[ ${opts[opt]} ]]
    then
      case $opt in
        1)
          printf '%s\n' 'Symlinking nvim'
          rm -f ~/.config/nvim/init.vim
          rm -rf ~/.config/nvim
          ln -s $PWD/vim/.vim ~/.config/nvim
          ln -s $PWD/vim/.vimrc ~/.config/nvim/init.vim
          ;;
        2)
          printf '%s\n' 'Symlinking karabiner'
          rm -f ~/.config/karabiner/karabiner.json
          ln -s $PWD/karabiner/karabiner.json ~/.config/karabiner/karabiner.json
          ;;
        3)
          printf '%s\n' 'Symlinking .zshrc'
          rm -f ~/.zshrc
          ln -s $PWD/zsh/.zshrc ~/.zshrc
          ;;
      esac
    fi
done
