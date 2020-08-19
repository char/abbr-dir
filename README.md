# abbr-dir

A directory abbreviator made for use in interactive shell prompts.

Takes an input string (an absolute path) as a program argument and emits it as an abbreviated path.

An *abbreviated path* is a path that collapses non-final directory names. `abbr-dir` might (depending on custom abbreviations) turn a path like:

```
/home/half-kh-hacker/Documents/Development/Projects/Infrastructure/ssh-lockbox
```

Into a shorter version:

```
~/…/Dev…/Infra…/ssh-lockbox
```

## Custom Abbreviations

Certain words when swapped out to a computer-calculated number of characters look a lot worse than a shorter, human-chosen name. For instance, the word 'images' looks a lot better as 'img' than 'imag'.

To this effect, `abbr-dir` reads a list of tab-separated lines, formatted as `long-name<Tab>short-name`. We maintain a community-contributed suggested list of abbreviations at `contrib/abbreviations`.

It's recommended that abbreviations stay **between 3 and 5 characters**, but this is unenforced by the program.

## Considerations

Under Unix-like operating systems, it is not guaranteed that a directory name will decode to proper text. In this case, the directory abbreviator will just emit the first four bytes of an undecodable path segment.

`abbr-dir` makes use of the `HOME` environment variable to generate paths beginning with tildes. If you don't want tilde-paths, you may want to unset this variable by executing `HOME= abbr-dir` in a POSIX-compliant shell.
