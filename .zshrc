alias ll="ls -l"
alias qq="exit"
alias rgrep="grep -R"
alias vim="nvim"
export PATH=/opt/local/libexec/gnubin:$(dirname $(rustup which rust-analyzer)):$PATH
source .zsh-autocomplete/zsh-autocomplete.plugin.zsh
