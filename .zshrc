# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_DISABLE_COMPFIX="true"
# Path to your oh-my-zsh installation.
  export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

plugins=(zsh-autosuggestions zsh-syntax-highlighting docker docker-compose)

source $ZSH/oh-my-zsh.sh

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias temp="sensors"


function mv-num() {
	increm=0
	f0ld=$1
	if [ -z "$f0ld" ]
	then
		echo "Usage: $0 PATH"
		return 0
	fi
	for file in `ls $f0ld` 
	do
		num=$(printf "%02d" "$increm")
		mv $f0ld/$file $f0ld/$num-$file
		increm=$((increm+1))
	done
}

function mv-num-only() {
	increm=0
	f0ld=$1
	if [ -z "$f0ld" ]
	then
		echo "Usage: $0 PATH"
		return 0
	fi
	for file in `ls $f0ld` 
	do
		num=$(printf "%02d" "$increm")
		name=$(basename -- "$file")
		extension="${name##*.}"
		mv $f0ld/$file $f0ld/$num.$extension
		increm=$((increm+1))
	done
}
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
export PATH=$PATH:/opt/goland2019/bin
export PATH=$PATH:$HOME/.deno/bin
export PATH=/opt/amazon-corretto-11.0.9.12.1-linux-x64/bin:$PATH
export PATH=$PATH:/media/t33/Seagate\ Expansion\ Drive/genymotion
export PATH=$PATH:/opt/idea-IU-211.6693.111/bin
export PATH=$PATH:/opt/node-v14.16.1-linux-x64/bin
export PATH=$PATH:~/.local/bin
source ~/.aliases
# compinit
#
# compile GO for windows
#export CGO_ENABLED=1 
#export CC=x86_64-w64-mingw32-gcc 
#export CXX=x86_64-w64-mingw32-g++ 
#export GOOS=windows 
#export GOARCH=amd64
#export PATH=/usr/lib/jvm/java-8-openjdk-amd64/bin:$PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[[ -e ~/.vim/bundle/Vundle.vim/ ]] || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#[[ -e ~/github/tmux-power/ ]] || git clone https://github.com/wfxr/tmux-power ~/github/
#to fix insecure autocomplete dirs:
# compaudit | xargs chmod go-w

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
