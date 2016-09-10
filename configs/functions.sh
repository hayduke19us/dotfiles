# Options

_uniq_list () {
  local -a combined
  local -a args

  args=$*
  combined=()

  for i in $args[@]
  do
    combined+=$i
  done

  return ${combined[@]} | tr ' ' "\n" | sort -u
}

parse_options () {
  local -a args
  local -a options

  args=(_uniq_list $*)
  options=()

  for i in $*[@]
  do
    if [[ "$i" =~ "^[-]" ]]
    then
      options+=$i
    else
      args+=$i
    fi
  done

  ($args $options)
}


# Railroady, default svg

diagram () {
  local -a args
  local -a options
  local -a files
  local -a default_options
  local model_base
  local file_path

  args=($*)
  options=()
  default_options=(-v -a -t --all-columns)

  for i in $args[@]
  do
    if [[ "$i" =~ "^[-]" ]]
    then
      options+=($i)
    else
      files+=("app/models/$i")
    fi
  done

  echo "options ${options[@]}"
  echo "default options ${default_options[@]}"
  echo "files ${files[@]}"

  railroady $default_options[*] $options[@] -s "$files" -M | dot -Tsvg > doc/models.svg
}

# git dir stats
dir_stats () {
  local -a all_options
  all_options=parse_options $*

}

. $HOME/dotfiles/configs/tab.sh
. $HOME/dotfiles/configs/getaroom_env.sh
