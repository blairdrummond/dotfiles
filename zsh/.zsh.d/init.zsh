# All the directories

export PATH=$HOME/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$PATH:/opt/texlive/2018/bin/x86_64-linux
export PATH=$PATH:/snap/bin

export EDITOR="emacsclient -t"
export VISUAL="emacsclient -t"
export PAGER="less"

export FZF_DEFAULT_COMMAND='ag -g ""'

export GOPATH=$HOME/desk/.src/go
export PATH=$PATH:$HOME/.emacs.d/bin/
export PATH=$GOPATH/bin:$PATH
export PATH=/opt/julia-1.5.0/bin/julia:$PATH
export R_LIBS_USER=$HOME/desk/.R

export EMAIL="blairdrummond@protonmail.com"

export VAULT_ADDR=https://vault.covid.cloud.statcan.ca

alias gitlog="git log --pretty=oneline --abbrev-commit"

# kubectl
alias k=kubectl

# source <(kubectl completion zsh)
# source <(helm completion zsh)

source ~/.blair-zsh.d/kubectl.zsh
source ~/.blair-zsh.d/helm.zsh
source ~/.blair-zsh.d/task.zsh

autoload -U colors; colors
source ~/.blair-zsh.d/zsh-kubectl-prompt/kubectl.zsh
#RPROMPT='%{$fg[cyan]%}{$ZSH_KUBECTL_CONTEXT}%{$reset_color%}'


alias t=todo-txt

alias k3sctl="kubectl --kubeconfig ~/.kube/k3s-config"

# Add alias statically:
# $ sudo snap alias microk8s.kubectl mk
mk --help > /dev/null 2>&1 && source <(mk completion zsh | sed "s/kubectl/mk/g")

export PATH=$HOME/desk/julia/julia-1.5.1/bin:$PATH

if [ "$TERM" = screen-256color ]; then
    export TERM=xterm-256color
fi
