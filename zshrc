# If you come from bash you might have to change your $PATH.
 export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
 export ZSH=/home/petergu/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
if [[ $TERM == *256color ]] then
	#ZSH_THEME="sobole"
	#murilasso
	#simonoff
	ZSH_THEME="agnoster"
	#ZSH_THEME="random"
else
	ZSH_THEME="robbyrussell"
	#ZSH_THEME="sobole"
fi
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
 DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
 HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
command-not-found
zsh-syntax-highlighting
lighthouse
)


#[[ $TERM == 'xterm-256color' ]] && source $ZSH/oh-my-zsh.sh
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

export DEFAULT_USER="petergu"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vi="vim --noplugin"
alias nvi="nvim --noplugin"
alias ll="ls -alh"
alias lll="exa -abghHliS"
alias nha="~/Python/nha/main.py"
#source /home/petergu/Downloads/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

function s(){
    local spath="/usr/local/bin/s"
    if [[ ${1:0:1} != '-' ]]
    then
        $spath $* | less 
    else
        $spath $*
    fi
}
alias s='echo -ne '\n'|s'

alias matcmd='matlab -nodisplay -nosplash -nojvm'
alias zh='source ~petergu/Widgets/zh.sh'
alias pg='watch -n 1 progress'
#alias note='nvim ~petergu/Widgets/news.txt'
function note(){
	local notepath="/home/petergu/Widgets"
	local notefile="news.txt"
	local edit="nvim"
	mv -f "$notepath/$notefile" "$notepath/.$notefile.tmp"
	if [[ "$1" == "d" ]]
	then
		date > "$notepath/$notefile"
	fi
	cat "$notepath/.$notefile.tmp" >> "$notepath/$notefile"
	#rm "$notepath/.$notefile.tmp"
	$edit "$notepath/$notefile"
	
}
alias dnote='note d'
alias origin='wine "C:\Program Files (x86)\OriginLab\Origin2017\Origin94.exe"'
export WINEDEBUG=-all
export LC_TIME="en_US.UTF-8"
export XIM="fcitx"
export XIM_PROGRAM="fcitx"
export XMODIFIERS="@im=fcitx"
export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"
export vrc="nvim ~/.vimrc"
export zrc="nvim ~/.zshrc"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval `dircolors ~/.dircolors`
