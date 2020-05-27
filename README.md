vim-config
==========

Vim configuration for python, django and LaTeX development. Additionally 
vimoutliner is included, as I am using it for all kind of lists, be it 
ToDo, Project Tasks ...

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

## Prerequisites
In order to use the vimrc contained in this Project, a graphical
vi, Python, Git and Mercurial should already be installed.

Even if you do not plan to develop Python, it will be needed by the Powerline
Bundle for the fancy status line.

## Installation
Clone the repository into `~/.vim` either via HTTPS:

```Shell
$ git clone --recursive https://github.com/lmoppert/vim-config.git ~/.vim
```
Or use SSH to be able to push updates with SSH key authentication:

```Shell
$ git clone --recursive git@github.com:lmoppert/vim-config.git ~/.vim
```

This also clones the bundle/vundle repository into `~/.vim/bundle/vundle` so
you can start to install the Bundles immediately. To do so, start vim and
install the Bundles with `:BundleInstall`. Afterwards restart vim to use the
newly installed bundles.

For the Powerline plugin you need to patch the fonts as it is using some custom
glyphs. Details can be found in the [Powerline documentation](
https://powerline.readthedocs.org/en/latest/installation.html#fonts-installation).
A very convenient alternative is to use a font, that already contains extra
glyphs for programmers, like Fira Code (my favorite), Inconsolata or Source
Code Pro.

This repository is also used by me to backup my own cofigruation. As it is
quite unlikely that you need to have the same entrys in your spellfile
(`.vim/spell/spell*`), I highly recommend to delete it. It will be recreated
the first time you add a word to your custom dictionary.

## Development environment
Just for my reminding, I will descripe my infrastructure in detail on the
following lines.

For the sake of my projects, every one of them is living in its own virtualenv
and I am using virtualenvwrapper to maintain them. All the envs reside in
`/var/env` and the project directory is `/var/www`. Both directories are also
provided to the shell via two shell variables (snippet from my `~/.bashrc`):

```Shell
# Settings for virtualenvwrapper
export WORKON_HOME=/var/env
export PROJECT_HOME=/var/www
source /usr/local/bin/virtualenvwrapper.sh
```
When creating a new environment, the **postmkvirtualenv** script creates a
corresponding project directory, adds that to the virtualenv and cds into it:

```Shell
PROJECT_NAME=$(echo $VIRTUAL_ENV|awk -F'/' '{print $NF}')
mkdir $PROJECT_HOME/$PROJECT_NAME
chown :www-data $PROJECT_HOME/$PROJECT_NAME
add2virtualenv $PROJECT_HOME/$PROJECT_NAME
cd $PROJECT_HOME/$PROJECT_NAME
```
Furthermore the **postactivate** script cds into this directory, every time a
virtualenv is activated with `workon`.

```Shell
PROJECT_NAME=$(echo $VIRTUAL_ENV|awk -F'/' '{print $NF}')
cd $PROJECT_HOME/$PROJECT_NAME
```
