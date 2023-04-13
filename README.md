# Reversed Git Rebase Editor

## Description

This is a simple Python script that reverses the order of commands sequence for `git rebase --interactive`.
It makes the commands to be shown in the newest-first order.

### Installing

Download the source code and simply type
```
make
```

to install the script to `/usr/local/bin`.

Then you should make it a default sequence editor with the command
```
git config --global sequence.editor reversed-git-rebase-editor
```

## Author

[@Maciej Dems](https://github.com/macdems)

## License

[![License: MIT](https://img.shields.io/badge/License-MIT-brightgreen.svg)](https://opensource.org/licenses/MIT)

This project is licensed under the MIT License — see the [LICENSE.md](LICENSE.md) file for details.
