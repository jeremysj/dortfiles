# virtualenv --
{:data-section="shell"}
{:data-date="April 29, 2019"}
{:data-extra="Um Pages"}

## SYNOPSIS
How to virtualenv:
export WORKON_HOME=~/.virtualenvs

mkdir $WORKON_HOME

echo "export WORKON_HOME=$WORKON_HOME" >> ~/.bashrc

test:

mkvirtualenv -p python2.7 test


Deactivate with:

deactivate


If you want to work on it again type:

workon test


To burn it down type:

rmvirtualenv test


## DESCRIPTION


## OPTIONS

