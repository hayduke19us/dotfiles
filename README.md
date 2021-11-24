## Dotfiles

Install:

* [Xcode command line tools](https://developer.apple.com/xcode/features/) `xcode-select --install` 
* [Homebrew](https://brew.sh/) `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
* [Git](https://help.github.com/articles/set-up-git/) 
* [Bork](https://github.com/mattly/bork.git)  `brew install bork`
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

Create a code directory to clone the dotfiles into 

```bash
  cd $HOME && mkdir code && \ 
  cd code && git clone https://github.com/hayduke19us/dotfiles.git
```
Run bork satisfy on configs/dotfiles.sh

```bash 
  bork/bin/bork satisfy code/dotfiles/install/dotfiles.sh
```

Add bork/bin to your PATH in *.zshrc* or symlink it to the system's bin

```bash 
  # Set path
  export PATH=$HOME/bork/bin:$PATH

  # Create a symbolic link
  ln -s bork/bin/bork usr/bin/bork`
```


#### Notes 

**Issue with gem pg make sure path is set so pg can find pg_config** 

```bash 
  export PATH=%PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin/
```

