#! /bin/bash
# custom i3 lemobar
# adapted from: https://github.com/electro7/dot_debian/tree/master/.i3/lemonbar

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

. "$DIR/config"

if [ $(pgrep -cx "run-lemonbar.sh") -gt 1 ]; then
    printf "%s\n" "The status bar is already running." >&2
    exit 1
fi

trap 'trap - TERM; kill 0' INT TERM QUIT EXIT

[ -e "${panel_fifo}" ] && rm "${panel_fifo}"
mkfifo "${panel_fifo}"

## events
# i3 workspaces, "WSP"
# TODO: fix i3 restart
sleep 1 && "$DIR/i3-workspaces.pl" > "${panel_fifo}" &

# conky, "SYS"
conky -c "$DIR/conkyrc" > "${panel_fifo}" &

# wifi/vpn, "NET"
journalctl -u mullvad-daemon -u NetworkManager --no-pager -f -o cat | grep -f "$DIR/network-patterns" -o --line-buffered | "$DIR/network.sh" > "${panel_fifo}" &

## fifo loop
cat "${panel_fifo}" | "$DIR/parser.sh" \
  | lemonbar -p -f "${font}" -b -g "${geometry}" -B "${col_back}" -F "${col_back}" &

wait
