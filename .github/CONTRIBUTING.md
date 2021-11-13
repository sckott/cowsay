## Scope

We're looking for ASCII art that can be recognized immediately. So we'd like to stay away from ASCII art that where it's hard to tell what the thing is. Ask yourself, would most R users know what the thing is? If not, it may be useful to make the art more detailed or consider using a different piece of art.  Exceptions on a case by case basis.

### Out of scope

- specific people (exceptions on a case by case basis, e.g. in cowsay: rms)
- drug references
- profanity
- demeaning/caricaturing any group of people

### Size

Art must be no bigger than the following three examples: [hypnotoad](https://github.com/sckott/cowsay/blob/main/R/animals.r#L157), [shark](https://github.com/sckott/cowsay/blob/main/R/animals.r#L325), [bat2](https://github.com/sckott/cowsay/blob/main/R/animals.r#L489)

### Not sure about scope?

Before opening a pull request, it's a good idea to open an issue to check if your idea is in scope.


## Contributing code to `cowsay`

1. Fork this repo
2. Add an ascii art animal in the `animals` vector in `animals.r` - just follow the other examples, and try to execute the code as a character in your console until it looks right. Be careful not to use auto-indenting in your editor on this file as it will wreck the formatting of the animals.
3. If your animal contains non-ascii characters, it will not display properly in Windows. Please add it to the list of animals that don't work in Windows in the `@details` section in the help for the `say` function.
4. Push back up to your account, then send a pull request to `sckott/cowsay`.

If you want to submit an issue, then go to the [issues page](https://github.com/sckott/cowsay/issues?state=open) and do that.
