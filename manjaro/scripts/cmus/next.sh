cmus-remote -n;

status=$(cmus-remote -Q | grep "status" | cut -d ' ' -f 2)
if [ $status == "playing" ]; then
  notify-send "cmus: $(~/.tmux/cmus)" -t 800
else
  notify-send "cmus: next" -t 800 -u low
fi

