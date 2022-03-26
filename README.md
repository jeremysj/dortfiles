# Dotfiles

## Warning - you don't want to use this repo. It's bad, ugly and stupid.
```
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
printf '\nsource "$HOME/.homesick/repos/homeshick/homeshick.sh"' >> $HOME/.bashrc
$HOME/.homesick/repos/homeshick/bin/homeshick clone jeremysj/dortfiles
```

If you want to clobber **all** your settings run:
```
$HOME/.homesick/repos/homeshick/bin/homeshick clone -f jeremysj/dortfiles
```

That's it.

One more thing.
You want to push back to the repo? You'll need to remember to do this:
```
homeshick cd dortfiles
git remote set-url origin git@github.com:jeremysj/dortfiles.git
```

Show a little class and verify before you `git push`
```
git remote -v
```

Achtung! If you make changes and want to update things. I have had to `rm` the existing files e.g. `.tmux*` and do the below. Right or wrong? Who knows but this is what it took.
Add the new files with git and push your changes.
On the system you want to refresh your dortfiles run:
```
homeshick refresh
```
Then:
```
homeshick link -f dortfiles
```

### What's in this stupid repo?

### .config
`.config` contains `sway`, `terminator` and `liquidprompt` configs. The `sway` config is likely useless to anyone **not** on a HiDPI laptop with a terrible low-res monitor attached.

The `terminator` config has Monokai (vivid I think?) as the default and gets rid of the ugly titlebar. It assumes you have the lovely [Hack](https://github.com/source-foundry/Hack) font installed.

### .fonts
Self explanatory. I _have_ found out that one should stop using `.fonts` and move to `.local/share/fonts` simply because it's better. I expect my life to improve immeasurably when that task is completed. See [this nail biter](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html) for the full story.

### .irssi
You guessed it, some basic `irssi` stuff.

### .tmux
This is basically an untouched [Oh My Tmux!](https://github.com/gpakosz/.tmux). After you install it run `tmux list-keys` and make a pot of coffee. You won't use all of it but what you do use will become invaluable.

### .vim*
Another mostly untouched repo found on GitHub. This one is [vim-bootstrap](https://github.com/avelino/vim-bootstrap). It's a big'un too but super useful. Study the key combos. Send Thiago a beer as thanks. I did strip out the colorscheme and let my terminal colors pass through.

### .*
The regular cruft here. Things come and go.

MIT License

Copyright (c) [2022] [jeremysj]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
