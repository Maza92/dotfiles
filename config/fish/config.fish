if status is-interactive
    # Commands to run in interactive sessions can go here
end
fish_add_path /home/link/.spicetify
fish_add_path /home/link/.bin

alias ls="eza -l --git --color=always --icons=always --sort=extension --no-user --no-permissions"
alias df="duf"
alias cat="bat"

if not pgrep ssh-agent >/dev/null
    ssh-agent -c | sed 's/^echo/#echo/' >$XDG_RUNTIME_DIR/ssh-agent.fish
    source $XDG_RUNTIME_DIR/ssh-agent.fish >/dev/null
end

if test -z "$SSH_AUTH_SOCK"
    and test -e "$XDG_RUNTIME_DIR/ssh-agent.fish"
    source $XDG_RUNTIME_DIR/ssh-agent.fish >/dev/null
end

rxfetch
