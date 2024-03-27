if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_vi_key_bindings
    alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
    bind -M insert \cy accept-autosuggestion
    bind -M insert \cn forward-word
end
