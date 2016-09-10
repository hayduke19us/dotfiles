#!/bin/bash
# Opens a new tab in iterm

function tab () {
  for i in $*; do
    osascript <<EOS
     tell application "iTerm2"
       tell current window
         create tab with default profile
         tell current session of current tab
           write text "$i"
         end tell
       end tell
     end tell
EOS
  done
}
