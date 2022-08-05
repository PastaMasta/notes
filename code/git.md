Cool git stuff
======================================

Gitconfig to use between work / home, but keeping home .gitconfig for most configs
```
# .gitconfig

[include]
  path = ~/personal/backpack/home/.gitconfig

[user]
  name = work Name
  email = work email

[includeIf "gitdir:~/personal/"]
  path = ~/personal/backpack/home/.gitconfig
```
