# This function starts broot and executes the command
# it produces, if any.
# It's needed because some shell commands, like `cd`,
# have no useful effect if executed in a subshell.

function br {
  f=$(mktemp)
  (
    set +e
    broot --outcmd "$f" "$@" # --hidden
    code=$?
    if [ "$code" != 0 ]; then
        rm -f "$f"
        exit "$code"
    fi
  )
  code=$?
  if [ "$code" != 0 ]; then
	  return "$code"
  fi

  d=$(<"$f")
  rm -f "$f"
  eval "$d"
}
