# .bashrc
#[[ $- = *i* ]] && source ~/liquidprompt/liquidprompt

# If not running interactively, don't do anything
case $- in
    *i*) ;;
    *) return;;
esac

if [ -n "$SSH_CONNECTION" ]; then
    eval $(keychain --eval id_rsa telinit_id_rsa id_ed25519_jsjohns id_ed25519_telinit)
fi
# check window size and update lines and columns as necessary
shopt -s checkwinsize

# append to bash_history instead of overwriting
shopt -s histappend

# correct spelling errors in `cd`
shopt -s cdspell

# autocomplete ssh hosts
[[ -e "$HOME/.ssh/config" ]] && complete -o "default" \
    -o "nospace" \
    -W "$(grep "^Host" ~/.ssh/config | \
    grep -v "[?*]" | cut -d " " -f2 | \
    tr ' ' '\n')" scp sftp ssh

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# this is more useful than I expected
#eval $(thefuck --alias)

# bring in the cruft!
for file in ~/.{aliases,functions,path,dockerfunc,extra,exports}; do
    if [[ -r "$file" ]] && [[ -f "$file" ]]; then
        source "$file"
    fi
done
unset file

# let aliases run with sudo
alias sudo='sudo '

# make readonly vim not suck
alias view='vim -R'

# homeshick
source "$HOME/.homesick/repos/homeshick/homeshick.sh"

alias ll='ls -alh'

alias ls='ls --color'

# DIR_COLORS frippery
eval $(dircolors ~/.dircolors)

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

# Make less display colors
# from: https://wiki.archlinux.org/index.php/Color_output_in_console#man
export LESS_TERMCAP_mb=$'\e[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\e[1;33m'     # begin blink
export LESS_TERMCAP_so=$'\e[01;44;37m' # begin reverse video
export LESS_TERMCAP_us=$'\e[01;37m'    # begin underline
export LESS_TERMCAP_me=$'\e[0m'        # reset bold/blink
export LESS_TERMCAP_se=$'\e[0m'        # reset reverse video
export LESS_TERMCAP_ue=$'\e[0m'        # reset underline
export GROFF_NO_SGR=1                  # for konsole and gnome-terminal]]]]]]]'
