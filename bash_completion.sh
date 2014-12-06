export HOMEBREW=`brew --prefix`

# git bash completion
if [ -f $HOMEBREW/etc/bash_completion.d/git-completion.bash ]; then
  . $HOMEBREW/etc/bash_completion.d/git-completion.bash
fi

# git PS1 function
if [ -f $HOMEBREW/etc/bash_completion.d/git-prompt.sh ]; then
  . $HOMEBREW/etc/bash_completion.d/git-prompt.sh
fi
