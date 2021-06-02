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
cd .vim
git submodule init
git submodule update
```

## HISTORY
### 1.0.1 (ongoing)
- Update Maxwell configuration
