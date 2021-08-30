FROM archlinux
ARG username
RUN pacman -Syu --noconfirm fish neovim git clojure rlwrap jdk11-openjdk fzf tmux nodejs npm openssh \
	&& curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
	&& useradd -m -s /usr/bin/fish ${username}
COPY dotvim /root/.config/nvim/init.vim

RUN nvim +'PlugInstall --sync' +qa 

USER ${username}
