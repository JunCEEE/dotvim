# My vim configuration
Version: 1.0.0

## Dependencies
### gtags_cscope and ctags
#### Ubuntu/Debian
```bash
sudo apt-get install global ctags
```

### python
#### conda
```bash
conda install vim jedi yapf pynvim
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
