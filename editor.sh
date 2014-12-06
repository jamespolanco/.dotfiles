function use_sublime () {
  alias sub='open -a "/Applications/Sublime Text 3.app"'
  export EDITOR='open -a "/Applications/Sublime Text 3.app"'
  export GEM_OPEN_EDITOR='open -a "/Applications/Sublime Text 3.app"'

  function s {
    if [ "$1" != "" ]; then
      sub $1
    else
      sub .
    fi
  }
}

use_sublime