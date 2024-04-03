# dotfiles
Personal repository to store Linux dotfiles.

Edit the exclude flags in the `update_dotfiles.sh` script to suit your needs:
```
...
rsync -av --exclude='*.token' \
          --exclude='.viminfo' \
          --exclude='*history*' \
...
```

Then run
```
>./update_dotfiles.sh
```