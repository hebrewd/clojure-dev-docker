FROM archlinux
RUN pacman -Syu --noconfirm fish vim git clojure leiningen jdk11-openjdk curl fzf tmux && lein \
	&& curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
COPY dotvim /root/.vimrc

RUN vim +'PlugInstall --sync' +qa && fish -c 'fish_add_path ~/.vim/plugged/vim-iced/bin'
