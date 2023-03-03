alias ll="ls -l"
alias qq="exit"
alias rgrep="grep -R"
alias vim="nvim"
export PATH=$PATH:$(dirname $(rustup which rust-analyzer))
source .zsh-autocomplete/zsh-autocomplete.plugin.zsh
