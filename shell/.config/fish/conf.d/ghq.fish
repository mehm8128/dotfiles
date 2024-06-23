function ghqcd
  set repo (ghq list -p | fzf)
  echo "z $repo"
  z $repo
  commandline -f repaint
end

