FROM debian:buster-slim

RUN apt-get update && apt-get install -y curl git sudo fuse

# Add the same host's user. Pass the user through `--build-arg USER=$USER`
ARG USER
RUN useradd -ms /bin/bash $USER
RUN usermod -a -G sudo $USER
RUN echo "$USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
USER $USER

WORKDIR /home/$USER/Downloads

RUN sudo curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
RUN sudo tar xzvf nvim-linux64.tar.gz
COPY --chown=$USER ./.vim /home/$USER/.config/nvim
COPY --chown=$USER ./.vimrc /home/$USER/.config/nvim/init.vim
RUN rm -rf /home/$USER/.config/nvim/plugged

RUN sudo chmod a+x ./nvim-linux64/bin/nvim

ENTRYPOINT ./nvim-linux64/bin/nvim
