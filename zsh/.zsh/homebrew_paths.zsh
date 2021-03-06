# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Homebrew binaries to path - set precedence to homebrew installed
# reverse order: last set is first searched when executing
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/libpcap/bin:$PATH"
export PATH="/usr/local/opt/guile@2.0/bin:$PATH"
export PATH="/usr/local/opt/file-formula/bin:$PATH"
export PATH="/usr/local/opt/ant@1.9/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"
export PATH="/Users/jlindqvist/go/bin:$PATH"
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-indent/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/ed/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/unzip/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/curl/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/openssl:$PATH"
export PATH="/usr/local/sbin:$PATH"

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# compiler flag paths
export LDFLAGS="$LDFLAGS:-L/usr/local/opt/openssl/lib"
export LDFLAGS="$LDFLAGS:-L/usr/local/opt/ruby/lib"
export LDFLAGS="$LDFLAGS:-L/usr/local/opt/curl/lib"
export LDFLAGS="$LDFLAGS:-L/usr/local/opt/sqlite/lib"
export LDFLAGS="$LDFLAGS:-L/usr/local/opt/guile@2.0/lib"
export LDFLAGS="$LDFLAGS:-L/usr/local/opt/readline/lib"
export LDFLAGS="$LDFLAGS:-L/usr/local/opt/libpcap/lib"
export LDFLAGS="$LDFLAGS:-L/usr/local/opt/icu4c/include"
export LDFLAGS="$LDFLAGS:-L/usr/local/opt/binutils/include"
export LDFLAGS="$LDFLAGS:-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"

export CPPFLAGS="$CPPFLAGS:-I/usr/local/opt/openssl/include"
export CPPFLAGS="$CPPFLAGS:-I/usr/local/opt/ruby/include"
export CPPFLAGS="$CPPFLAGS:-I/usr/local/opt/curl/include"
export CPPFLAGS="$CPPFLAGS:-I/usr/local/opt/sqlite/include"
export CPPFLAGS="$CPPFLAGS:-I/usr/local/opt/guile@2.0/include"
export CPPFLAGS="$CPPFLAGS:-I/usr/local/opt/readline/include"
export CPPFLAGS="$CPPFLAGS:-I/usr/local/opt/libpcap/include"
export CPPFLAGS="$CPPFLAGS:-I/usr/local/opt/icu4c/include"
export CPPFLAGS="$CPPFLAGS:-I/usr/local/opt/binutils/include"
export CPPFLAGS="$CPPFLAGS:-I/usr/local/opt/llvm/include"

export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/openssl/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/ruby/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/curl/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/sqlite/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/guile@2.0/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/readline/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/libpcap/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/icu4c/lib/pkgconfig"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/opt/binutils/lib/pkgconfig"

export RUBYLIB="$RUBYLIB:/usr/local/lib/ruby"
export GROOVY_HOME="/usr/local/opt/groovy/libexec"
