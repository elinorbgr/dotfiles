set -g theme_display_git_ahead_verbose yes

eval (python -m virtualfish)

set --export PATH $HOME/.cargo/bin $HOME/.local/bin $PATH

set -x GPG_TTY (tty)
set -x EDITOR /usr/bin/nvim
