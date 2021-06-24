set PATH /usr/local/bin /usr/sbin /.anyenv/bin /bin /usr/bin /sbin /usr/local/bin/code /Users/tomoki.ichikawa/Develop/flutter/bin /Applications/Visual Studio Code.app/Contents/Resources/app/bin /usr/local/opt/avr-gcc@7/bin ~/.rbenv/shims ~/.pyenv/shims /usr/local/opt/mysql@5.7/bin /Users/tomoki.ichikawa/Library/Android/sdk/platform-tools $PATH
set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100%"
set -x PATH $HOME/.anyenv/bin $PATH
eval (anyenv init - | source)
set fish_plugins theme peco
set GHQ_SELECTOR peco

function fish_user_key_bindings
  bind \cr peco_select_history # Bind for prco history to Ctrl+r
  bind \c] peco_change_directory # Bind for prco change directory to Ctrl+]
end