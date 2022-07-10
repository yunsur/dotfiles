# env
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# GPG
export GPG_TTY=$(tty)

# arch
export ARCHFLAGS="-arch x86_64"

# docker
export DOCKER_BUILDKIT=0
export COMPOSE_DOCKER_CLI_BUILD=0

# pyenv
if [[ -d $HOME/.pyenv ]]; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    if command -v pyenv 1>/dev/null 2>&1; then
        eval "$(pyenv init --path)"
    fi
fi

# virtualenvwrapper
if [[ -d $HOME/.virtualenvs ]]; then
    export WORKON_HOME=$HOME/.virtualenvs
    export PROJECT_HOME=$HOME/Sources
    # source $HOME/.pyenv/versions/2.7.18/bin/virtualenvwrapper.sh
    # source $HOME/.virtualenvs/3.10.2/bin/virtualenvwrapper.sh
fi

# rbenv
if [[ -d ~/.rbenv/ ]]; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
    export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
fi

# nvm
if [[ -d $HOME/.nvm ]]; then
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
fi

# cargo
if [[ -d $HOME/.cargo ]]; then
	export PATH="$PATH:$HOME/.cargo/bin"
fi

# go
if [[ -d /usr/local/go ]]; then
    export PATH="$PATH:/usr/local/go/bin"
    export GOROOT="/usr/local/go"
fi

# goenv
if [[ -d $HOME/go ]]; then
    export GO111MODULE=on
    export GOPROXY=https://goproxy.cn,direct
    export GOPATH="$HOME/go"
    export GOBIN="$GOPATH/bin"
    export PATH=$PATH:$GOBIN
fi

# java
if [[ -d /Library/Java/JavaVirtualMachines/temurin-11.jdk ]]; then
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-11.jdk/Contents/Home
    export JRE_HOME=/Library/Java/JavaVirtualMachines/temurin-11.jdk/Contents/Home/jre
fi

# m4
export PATH="/usr/local/opt/m4/bin:$PATH"

# zlib
export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

# readline
export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"
export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"

# openssl
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

# sqlite
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/sqlite/lib"
export CPPFLAGS="-I/usr/local/opt/sqlite/include"
export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"

# libffi
export LDFLAGS="-L/usr/local/opt/libffi/lib"
export CPPFLAGS="-I/usr/local/opt/libffi/include"
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"

# guile
export GUILE_LOAD_PATH="/usr/local/share/guile/site/3.0"
export GUILE_LOAD_COMPILED_PATH="/usr/local/lib/guile/3.0/site-ccache"
export GUILE_SYSTEM_EXTENSIONS_PATH="/usr/local/lib/guile/3.0/extensions"
export GUILE_TLS_CERTIFICATE_DIRECTORY="/usr/local/etc/gnutls/"

# libpcap
export PATH="/usr/local/opt/libpcap/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/libpcap/lib"
export CPPFLAGS="-I/usr/local/opt/libpcap/include"

# ncurses
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ncurses/lib"
export CPPFLAGS="-I/usr/local/opt/ncurses/include"
export PKG_CONFIG_PATH="/usr/local/opt/ncurses/lib/pkgconfig"

# icu4c
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export LDFLAGS="-L/usr/local/opt/icu4c/lib"
export CPPFLAGS="-I/usr/local/opt/icu4c/include"
export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"

# tcl-tk
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/tcl-tk/lib"
export CPPFLAGS="-I/usr/local/opt/tcl-tk/include"
export PKG_CONFIG_PATH="/usr/local/opt/tcl-tk/lib/pkgconfig"

# apr
export PATH="/usr/local/opt/apr/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/apr/lib"
export CPPFLAGS="-I/usr/local/opt/apr/include"
export PKG_CONFIG_PATH="/usr/local/opt/apr/lib/pkgconfig"

# apr-util
export PATH="/usr/local/opt/apr-util/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/apr-util/lib"
export CPPFLAGS="-I/usr/local/opt/apr-util/include"
export PKG_CONFIG_PATH="/usr/local/opt/apr-util/lib/pkgconfig"
