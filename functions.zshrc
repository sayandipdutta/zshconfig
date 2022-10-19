ssh() {
    tmux rename-window "$*"
    command ssh "$@"
    tmux setw automatic-rename
}

settitle() {
    printf "\033k$1\033\\"
}
ssh() {
    settitle "$*"
    command ssh "$@"
    settitle "bash"
}

# Create cpp project structure
function cpptake() {
    mkdir -p "$1"
    mkdir -p "${1}/src"
    mkdir -p "${1}/build"
    cd "$1"
    cp ~/.config/nvim/templates/skeleton.cmakelist CMakeLists.txt
    stem=`echo $1 | awk -F/ '{print $NF}'`
    sed -i "s/@@@@@@/"$stem"/g" CMakeLists.txt
    nvim src/main.cpp
}

# Create cargo project and move to it
function cargotake() {
    cargo new "$1"
    cd "$1"
}

# Create a venv
function createvenv() {
	python$1 -m venv ~/Envs/$2
}

# So list of venv
function showvenv() {
	ls -lrt ~/Envs
}

# activate a venv
function activatevenv() {
	if [[ $(echo $VIRTUAL_ENV | grep -o '[^/]*$') != "$1" && "$VIRTUAL_ENV" != "" ]];
	then
		echo "deactivating $VIRTUAL_ENV"
		deactivate
	fi

	if [ "$VIRTUAL_ENV" = "" ]
	then
		echo "activating $1"
		source ~/Envs/$1/bin/activate
	fi
}

# Build using gcc
function build() {
  gcc $1.c -o builds/$1
}


# Compile using gcc
function compile() {
  g++ -o $1 $1.cpp
}

# ranger function
function ranger {
    local IFS=$'\t\n'
    local tempfile="$(mktemp -t tmp.XXXXXX)"
    local ranger_cmd=(
        command
        ranger
        --cmd="map Q chain shell echo %d > "$tempfile"; quitall"
    )
    
    ${ranger_cmd[@]} "$@"
    if [[ -f "$tempfile" ]] && [[ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]]; then
        cd -- "$(cat "$tempfile")" || return
    fi
    command rm -f -- "$tempfile" 2>/dev/null
}

# ranger cd
ranger_cd() {
    temp_file="$(mktemp -t "ranger_cd.XXXXXXXXXX")"
    ranger --choosedir="$temp_file" -- "${@:-$PWD}"
    if chosen_dir="$(cat -- "$temp_file")" && [ -n "$chosen_dir" ] && [ "$chosen_dir" != "$PWD" ]; then
        cd -- "$chosen_dir"
    fi
    rm -f -- "$temp_file"
}

# search configs with fzf
confs() {
    /bin/bash ~/github/shell/conf.sh
}

# search the config paths
pconfs() {
    /bin/bash ~/github/shell/confpath.sh
}
# bookmark
hashcwd() { hash -d "$1"="$PWD" }

# Auto activate venv when entering with cd
function automatically_activate_python_env() {
  if [[ -z $VIRTUAL_ENV ]] ; then
    activate_venv
  else
    parentdir="$(dirname ${VIRTUAL_ENV})"
    if [[ "$PWD"/ != "$parentdir"/* ]] ; then
      deactivate
      activate_venv
    fi
  fi
}

function activate_venv() {  
  local d n
  d=$PWD
  
  until false 
  do 
  if [[ -f $d/.venv/bin/activate ]] ; then 
    source $d/.venv/bin/activate
    break
  fi
    d=${d%/*}
    # d="$(dirname "$d")"
    [[ $d = *\/* ]] || break
  done
}

autoload -Uz add-zsh-hook
# add-zsh-hook precmd automatically_activate_python_venv
precmd_functions+=(automatically_activate_python_env)


## show mode in vim mode zle
#function zle-keymap-select() {
#  zle reset-prompt
#  zle -R
#}
#
#zle -N zle-keymap-select
#
#function vi_mode_prompt_info() {
#  echo "${${KEYMAP/vicmd/[% NORMAL]%}/(main|viins)/[% INSERT]%}"
#}
#
## define right prompt, regardless of whether the theme defined it
#RPS1='$(vi_mode_prompt_info)'
#RPS2=$RPS1
