FROM archlinux
ARG username
RUN pacman -Syu --noconfirm fish neovim git clojure rlwrap jdk11-openjdk fzf tmux nodejs npm openssh && useradd -m -s /usr/bin/fish ${username}
USER ${username}
RUN curl -fLo /home/${username}/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
	
COPY dotvim /home/${username}/.config/nvim/init.vim

RUN nvim +'PlugInstall --sync' +qa 

