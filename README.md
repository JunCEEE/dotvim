# My vim configuration
Version: 1.0.1

## Dependencies
### gtags_cscope and ctags
#### Ubuntu/Debian
```bash
sudo apt-get install global ctags
```

### python
```bash
pip install jedi yapf pynvim
```
or
```bash
conda install vim jedi yapf pynvim
```

A new environment

```bash
conda create -n NEW_ENV vim jedi yapf pynvim
```

## Installation
Clone

```bash
cd ~ && git clone git@github.com:JunCEEE/dotvim.git
test -d .vim || mv dotvim .vim
```

Update submodules
```bash
cd ~/.vim
git submodule init
git submodule update
```

Add submodules
```bash
cd ~/.vim/bundle
git submodule add GITHUB_LINK
```

## Remove submodules
0. `mv a/submodule a/submodule_tmp`


1. `git submodule deinit -f -- a/submodule`
2. `rm -rf .git/modules/a/submodule`
3. `git rm -f a/submodule`


Note: a/submodule (no trailing slash)

or, if you want to leave it in your working tree and have done step 0.

3. `git rm --cached a/submodule` `mv a/submodule_tmp a/submodule`

## HISTORY
### 1.0.1 (ongoing)
- Update Maxwell configuration
- Add [Black](https://github.com/psf/black) plugin
