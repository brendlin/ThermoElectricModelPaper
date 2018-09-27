How to use this package
===========

Below is a brief description of how to use the package:

### Checking out the package and compiling

    git clone ssh://git@gitlab.cern.ch:7999/brendlin/ThermoElectricModelPaper.git
    make
    
### Updating files

    git status # to see what you've changed
    git diff sections/abstract.tex # to see in greater detail what you've changed
    git add sections/abstract.tex
    git commit -m "my commit message"
    git push

### Updating files

This proceeds the same way as updating files:

    git status # to see what you've changed
    git add sections/mynewfile.tex
    git commit -m "my commit message"
    git push

### Updating from the "remote" version

Before making new changes, it's good to see if anything changed on the "remote" version:

    git pull

### Dealing with merge conflicts

Sometimes you will get "merge conflicts" when trying to pull new code from the remote -- you can resolve these via the following:

    git stash # stashes your local commits
    git pull
    git stash apply # puts your local commits back on top
    ...

You may need to resolve conflicts between your local commits and the remote version -- you can see which conflicts exist by running `git diff`.