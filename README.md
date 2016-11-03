## git默认颜色配置
```bash
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
``` 

## git默认编辑器配置
```bash
git config --global core.editor vim
```

## git自动补全
```bash
cp Tools/.git-completion.bash ~/
source ~/.git-completion.bash
```

## git别名设置 [optional]
```bash
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.ct commit
git config --global alias.df diff
git config --global alias.br branch
```

## vim颜色风格配置
```bash
cp -r Tools/vim ~/.vim
cp Tools/.vimrc ~/
```
