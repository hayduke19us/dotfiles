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

  return ${combined[@]} | sort -u
}

parse_options () {
  local -a args
  local -a options

  args=$(_uniq_list $*)
  options=()
  echo $args

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

containsElement () {
  for e in "${@:2}"; do [[ "$e" == "$1" ]] && return 0; done
  return 1
}

# git delete merged branches
prune () {
  local release=$1
  local border="=-=-=-=-=-=-=-=-=-="
  local current=$(git rev-parse --abbrev-ref HEAD)
  local not_removed=()

  echo "Merged branches removed"
  echo $border

  for branch in $(gb --merged)
  do
    if [[ $current != $branch && $branch != "master" && ! $branch =~ "${release}" && $branch != "*" ]]
    then
      gb -D $branch
    else
      [[ $branch != '*' ]] && not_removed+=($branch)
    fi
  done
  echo $border
  echo "Merged branches not removed"
  echo $not_removed
}

manualPrune () {
  local -a branches
  branches=(
  mongoid_encryption_fields
  positionable_images
  proposed_changes-6553
  remove-strict-dig-6585
  sc_apitude_with_rate_contracts
  sc_rohit_and_rate_contracts
  spike-for-DEV-7246
  tmp/r1DEV-6966
  topic/search_by_supplier-6059
  topic/systematize_content_supplier_errors-6427
  use_release_manager-6816
  )

  for branch in ${branches[@]}
  do
    gb -D $branch
  done
}

vim_pair_init () {
  ln -s ~/.vimrc-pair ./.vimrc
}

git_large_objects () {
  git rev-list --all --objects | \
    sed -n $(git rev-list --objects --all | \
    cut -f1 -d' ' | \
    git cat-file --batch-check | \
    grep blob | \
    sort -n -k 3 | \
    tail -n40 | \
    while read hash type size; do
         echo -n "-e s/$hash/$size/p ";
    done) | \
    sort -n -k1
}

normalize_boolean_option () {
  # Favors true if anything but false is recognized
  read interactive
  case $interactive in
    f*) echo -n 1;;
     *) echo -n 0;;
  esac
}

interactive_delete_branch () {
  echo -n "\nDelete ${1} ? "
  local delete=$(normalize_boolean_option)
  echo "-->${delete}"

  if [[ $delete -eq 0 ]]; then
    git branch -D "$1"
  else
    echo "Skipping ${1}\n"
  fi
}

git_prune_no_remote () {
  echo "This function will remove all branches that don't have a remote!!"
  echo "Would you like to do one branch at a time? [(f*) = false,  (*) = true]\n"
  local interactive=$(normalize_boolean_option)

  for branch in $(git branch -vv | awk '/\: gone\]/ {print $1}'); do
    [[ "$branch" == "master" ]] && echo "Woops you this is Master, exiting before you hurt yourself!" && exit 1 >&2

    if [[ $interactive -eq 0 ]]; then
      interactive_delete_branch $branch
    else
      git branch -D "$branch"
    fi
  done
}
