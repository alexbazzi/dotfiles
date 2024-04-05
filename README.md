# dotfiles
Personal repository to store Linux dotfiles.

Edit the exclude flags in the `backup.sh` and `restore.sh` scripts before executing them:
```
# Example...
rsync -av --exclude='*.token' \
          --exclude='.viminfo' \
          --exclude='*history*' \
          --include='.*' \
          --exclude='*' \
          src dest
```
> **Note:** Make sure you run the scripts below from the _dotfiles/_ directory.

To backup your current dotfiles in $HOME, execute the `backup.sh` script:
```
./backup.sh
```

If you want to restore the dotfiles into your $HOME directory instead, run the `restore.sh` script:
```
./restore.sh
```