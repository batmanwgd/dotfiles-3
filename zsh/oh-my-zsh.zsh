ZSH=$HOME/.oh-my-zsh

ZSH_THEME="lust"

DISABLE_AUTO_UPDATE="true"

plugins=(autoenv battery colored-man command-not-found cp encode64 extract history gem git gitfast gitignore git-extras lol mosh npm python rsync safe-paste screen tmux tmuxinator urltools vundle)

if [[ "$OSTYPE" =~ ^darwin ]]; then
	plugins=(${plugins[@]} brew cloudapp copydir copyfile osx sublime)
elif [ -f /etc/debian_version ]; then
	plugins=(${plugins[@]} debian)
fi
