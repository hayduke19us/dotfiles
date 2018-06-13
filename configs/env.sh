# Editor
export EDITOR=/usr/local/bin/vim

# Set xcode, homebrew & mysql paths
export PATH=/usr/local/opt/mysql@6.5/bin:/usr/local/opt/mongodb@3.2:/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/bork/bin:$PATH
export PATH="$HOME/.jenv/bin:$PATH"

# dont allow tmux to rename my windows
export DISABLE_AUTO_TITLE="true"

# Proxy for curl
export CURLOPT_PROXY=http://www.supply.staging2.testaroom.com
