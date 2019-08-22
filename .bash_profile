  function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }

  function prompt {
    # Define some local colors
    local   RED='\[\033[0;31m\]' # This syntax is some weird bash color thing I never
    local   LIGHT_RED='\[\033[1;31m\]' # really understood
    local   BLUE='\[\e[0;49;34m\]'

    # ♥ ☆ - Keeping some cool ASCII Characters for reference
  
    # Here is where we actually export the PS1 Variable which stores the text for your prompt
    export PS1="\[\e]2;\u@\h\a[\[\e[37;44;1m\]\t\[\e[0m\]]$RED\$(parse_git_branch) \[\e[32m\]\W\[\e[0m\]\n\[\e[0;31m\]\[\e[35m\]☆\[\e[m\] $RED $CHAR \[\e[0m\]"
      PS2='> '
      PS4='+ '
    }

  # Finally call the function and our prompt is all pretty
  prompt

  # For more prompt coolness, check out Halloween Bash:
  # http://xta.github.io/HalloweenBash/

  # If you break your prompt, just delete the last thing you did.
  # And that's why it's good to keep your dotfiles in git too.

# Helpful Functions
# =====================

# A function to easily grep for a matching process
# USE: psg postgres
function psg {
  FIRST=`echo $1 | sed -e 's/^\(.\).*/\1/'`
  REST=`echo $1 | sed -e 's/^.\(.*\)/\1/'`
  ps aux | grep "[$FIRST]$REST"
}

# A function to base64 encrypt a string from the command line
# USE: base64enc 'my_password'
function base64enc () {
  echo -n $1 | openssl enc -base64
}

# A function to extract correctly any archive based on extension
# USE: extract imazip.zip
#      extract imatar.tar
function extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)  tar xjf $1      ;;
            *.tar.gz)   tar xzf $1      ;;
            *.bz2)      bunzip2 $1      ;;
            *.rar)      rar x $1        ;;
            *.gz)       gunzip $1       ;;
            *.tar)      tar xf $1       ;;
            *.tbz2)     tar xjf $1      ;;
            *.tgz)      tar xzf $1      ;;
            *.zip)      unzip $1        ;;
            *.Z)        uncompress $1   ;;
            *)          echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

#A function to automatically start ssh-agent and add identities on bash startup
# function sshkeyring {
#   for possiblekey in ${HOME}/.ssh/*; do
#       if grep -q PRIVATE "$possiblekey"; then
#           ssh-add "$possiblekey"
#       fi
#   done
# }

#sshkeyring
#DON'T DO THIS, YOU HAVE TOO MANY SSH KEYS

# Aliases
# =====================
  # CKM connections
  alias bastion="ssh-agent && ssh-add ~/.ssh/iq-toolkit-test.pem && ssh -L 3398:10.180.191.166:3389 -A cgonzalez26@bastion.iq-toolkit.com"
  alias ckm_website_0="ssh-agent && ssh-add ~/.ssh/ckm-public-website-dev.pem && ssh ubuntu@34.227.173.31"
  alias ckm_website_1="ssh-agent && ssh-add ~/.ssh/ckm-public-website-dev.pem && ssh ubuntu@204.236.202.157"
  alias ckm_website_dev="ssh-agent && ssh-add ~/.ssh/ckm-public-website-dev.pem && ssh ubuntu@34.239.102.207"
  alias gitlab="ssh-agent && ssh-add ~/.ssh/INF_GitRepo.pem && ssh ubuntu@10.39.40.114"

  #QOL aliases
  alias runbuild_tk="git clean -xfd && ./gradlew webpack && ./gradlew bootRun"
  alias export_tk="export SPRING_PROFILES_ACTIVE=\"security-db,fixtures\""
  alias clean_win="find . -type f -print0 | xargs -0 dos2unix"
  alias go_blbg="cd ~/code/blbg-application-carolina/"
  alias blbg_vue="cd ~/code/blbg-application-carolina/src/main/public/blbg"

  # Docker
  alias docker-destroy="sh ~/bash_scripts/docker-destroy.sh"

# Case-Insensitive Auto Completion
bind "set completion-ignore-case on"

export PATH="/USERS/cgonzalez/npm:$PATH"
export PATH="/USERS/cgonzalez/local/bin:$PATH"
export PATH="/USERS/cgonzalez/anaconda3/bin:$PATH"

source $HOME/.rvm/scripts/rvm

. /Users/cgonzalez/anaconda3/etc/profile.d/conda.sh
