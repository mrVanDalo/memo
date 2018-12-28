% memo
%
% 10 August 2018

# NAME
memo

# SYNOPSIS
`memo <command> [arguments]`

# DESCRIPTION
A tool to memorize stuff.
It saves files `$MEMO_DIR` (`$HOME/memo` by default).
The structure is `$MEMO_DIR/<topic>/memo.md`
You can also copy files in the topic folder as well.

We call the folder `$MEMO_DIR/<topic>` a 'topic folder'.

# COMMANDS

`add <topic> [text]`
: Adds text to the `memo.md` in the topic folder. If text is not given it will read from stdin.

`rm <topic>`
: Remove `$MEMO_DIR/topic` folder with all its content.

`copy <topic> <file-to-copy>`
: Copy a file to the topic folder.

`search <term-to-search>`
: Search for a term in `$MEMO_DIR` using `ack`.

`show <topic>`
: Shows `memo.md` in the topic folder. Also shows a list of all files in the topic folder.

`edit <topic>`
: Opens your favorite editor to edit the memo topic.

`list`
: Prints a list of all topics.

`git <command>`
: Run a git command in `$MEMO_DIR`. Once `$MEMO_DIR` is a git repository, all memo commands create commits.

# CONFIGURATION

`$MEMO_DIR`
: holds the folder where to store the memo files. Default is `$HOME/memo`.

`$EDITOR`
: Your favorite editor. Must be set for the edit command.

# EXAMPLE

Append the string "A search-engine" to the `memo.md` file
in the topic "google".

    $ memo add google A search-engine

Appends the content of `www.google.com` to the `memo.md` file
the topic "google".

    $ curl www.google.com | memo add google

Copy the "Invoice.pdf" file to the "lawsuit" topic.

    $ memo copy lawsuit ~/Downloads/Invoice.pdf

Make `$MEMO_DIR` a git repository.

    $ memo git init
