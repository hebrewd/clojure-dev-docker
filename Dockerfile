FROM archlinux
RUN pacman -Syu --noconfirm fish neovim git clojure rlwrap jdk11-openjdk curl fzf tmux nodejs npm openssh \
	&& curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
COPY dotvim /root/.config/nvim/init.vim

RUN nvim +'PlugInstall --sync' +qa 
