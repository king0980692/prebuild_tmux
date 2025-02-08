FROM alpine:3.14
RUN apk add libevent-dev ncurses-dev build-base bison pkgconf git wget
RUN wget https://github.com/tmux/tmux/releases/download/3.5a/tmux-3.5a.tar.gz && tar zxf tmux-3.5a.tar.gz
RUN cd tmux-3.5a/ && PKG_CONFIG_PATH=$HOME/local/lib/pkgconfig ./configure --prefix=$HOME/local && make && make install


