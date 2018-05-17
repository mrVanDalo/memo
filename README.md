# memo

A simple tool written in bash to memorize stuff.

Memo organizes is structured through topics which are folders in `~/memo`.

## Features

* add text to a topic to memorize it
* search for strings in your memo-database
* copy/import files to topic folder.

## Run

`./memo` shows how to use it

### Preconditions

* tree
* ack

## Installation

* Gentoo : use [my overlay](https://github.com/mrVanDalo/overlay) and install `app-misc/memo`
* NixOs : just do `nix-shell -p memo`

## Configuration

to change the folder where memo kept its files just add

    export MEMO_DIR=/path/to/memo/folder

in your `~/.bashrc`.
