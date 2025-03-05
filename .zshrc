if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"



plugins=(
	git
	zsh-syntax-highlighting
	)

source $ZSH/oh-my-zsh.sh



# alias
alias nv=nvim
alias lv=lvim
alias vi=lvim

alias py=python3
alias ta=tmux attach


#hotkey
bindkey "^H" backward-char
bindkey "^L" forward-char
bindkey "^J" backward-word
bindkey "^K" forward-word
bindkey "^[" beginning-of-line
bindkey "^]" end-of-line
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="$HOME/.local/bin:$PATH"

#yazi setup
export EDITOR="lvim"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}


# Enhanced z navigation function with minimal output
z() {
  # Check if the first argument is one of our shortcuts
  local is_shortcut=false
  case "$1" in
    "web"|"code"|"project") is_shortcut=true ;;
  esac

  # If not our shortcut, pass to the original z command if it exists
  if [ "$is_shortcut" = false ]; then
    if command -v /usr/local/bin/z &> /dev/null; then
      /usr/local/bin/z "$@"
      return $?
    else
      # If original z doesn't exist, show our help
      echo "Usage: z <shortcut> (Available: web, code, project)"
      return 1
    fi
  fi

  # Color codes
  local GREEN='\033[0;32m'
  local BLUE='\033[0;34m'
  local NC='\033[0m' # No Color

  if [ -z "$1" ]; then
    echo "Usage: z <shortcut> (Available: web, code, project)"
    return 1
  fi

  local destination=""
  local emoji=""

  case "$1" in
    "web")
      destination="/Users/osga/Documents/web"
      emoji="🌐"
      ;;
    "code")
      destination="/Users/osga/Documents/code"
      emoji="💻"
      ;;
    "project")
      destination="/Users/osga/Documents/project"
      emoji="📁"
      ;;
    *)
      echo "Usage: z <shortcut> (Available: web, code, project)"
      return 1
      ;;
  esac

  if [ -d "$destination" ]; then
    cd "$destination"
    echo -e "${GREEN}$emoji ${BLUE}$destination${NC}"
  else
    echo "Directory doesn't exist: $destination. Create it? (y/n)"
    read -r response
    if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
      mkdir -p "$destination"
      cd "$destination"
      echo -e "${GREEN}Created and navigated to: $destination${NC}"
    else
      echo "Operation cancelled"
    fi
    return 1
  fi
}

# Add tab completion
_z_completion() {
  local cur=${COMP_WORDS[COMP_CWORD]}
  local shortcuts="web code project"

  COMPREPLY=($(compgen -W "$shortcuts" -- "$cur"))
}

complete -F _z_completion z

source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
