# dotfiles
Personal repository to store Linux dotfiles.

Edit the exclude flags in the `backup.sh` and `restore.sh` scripts before executing them:
```
...
rsync -av --exclude='*.token' \
          --exclude='.viminfo' \
          --exclude='*history*' \
...
```

To backup the current dotfiles in $HOME, execute the `backup.sh` script:
```
./backup.sh
```

If you want to restore the repo into your $HOME directory instead, run the `restore.sh` script:
```
./restore.sh
```