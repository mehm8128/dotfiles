if status is-interactive
    zoxide init fish | source
    oh-my-posh init fish --config "~/.config/fish/themes/powerline.omp.json" | source
    set -g theme_display_git_default_branch yes
    set -g theme_display_date no
    set -g theme_display_cmd_duration no
    set -g theme_display_user yes
    abbr -a gbrdl "git fetch -p && git branch -vv | grep ': gone]' | awk '{print \$1}' | xargs -I {} git branch -D {}"
    abbr -a ping pingu -P
    ~/.local/bin/mise activate fish | source
    abbr -a gg ghq get
    abbr -a gp git pull
    abbr -a nd nr dev
    abbr -a ns nr storybook
    abbr -a nb nr biome
    abbr -a gco "git checkout (git branch -a | cut -c 3- | sed 's/^remotes\/[0-9a-zA-Z_-]\+\///' | awk '!a[\$0]++' | fzf)"
    abbr -a dstart sudo service docker start
    abbr -a dstop sudo service docker stop
end

