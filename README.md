vim-config
==========

Vim configuration for python, django and LaTeX development. (LaTeX support has
not yet been added!)

# Vim
Additionally vimoutliner is included, as I am using it for all kind of lists,
be it ToDo, Project Tasks ...

The environment I am working with is very heterogeneous. It should work for
Linux, Windows and Mac. The configuration is stored in `~/.vim`, which is very
common on Linux and Mac but not on Windows. The latter one is searching the
configuration in someplace like `c:\Program Files\Vim\`. In order to get the
config read, one should add a vimrc containing somethins like this:

```VimL
set runtimepath+=$HOME\.vim
source $HOME\.vim\vimrc
```

The runtimepath directive is also included in my `vimrc`, so it can be left out
here.

For the other OS, you create the file `~/.vimrc` with `source ~/.vim/vimrc` in
it.

## Prequesits
In order to use the vimrc contained in this Project, a graphical
vi, Python, Git and Mercurial should already be installed.

Even if you do not plan to develop Python, it will be needed by the Powerline
Bundle for the fancy status line.

## Installation
Clone the repository into `~/.vim` like so:

```Shell
$ git clone --recursive https://github.com/lmoppert/vim-config.git ~/.vim
```

This also clones the bundle/vundle repository into `~/.vim/bundle/vundle` so
you can start to install the Bundles immediately. To do so, start vim and
install the Bundles with `:BundleInstall`. Afterwards restart vim to use the
newly installed bundles.

# Development environment
Just for my reminding, I will descripe my infrastructure in detail on the
following lines.


