# .bashrc
[[ $- = *i* ]] && source ~/liquidprompt/liquidprompt

# If not running interactively, don't do anything
case $- in
    *i*) ;;
    *) return;;
esac

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
eval $(thefuck --alias)

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

# personal man pages - https://github.com/pjungwir/manpj/
export MANPATH="$MANPATH:$HOME/man"
export MANSECT="1:n:l:8:3:2:3posix:3pm:3perl:5:4:9:6:7:jj"
