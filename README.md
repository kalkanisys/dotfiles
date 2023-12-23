# kalkani systems does dotfiles

Inspired(forked) from <https://github.com/holman/dotfiles>.

Your dotfiles are how you personalize your system. These are ours.
We found holmans dotfiles to be a great starting point for our own dotfiles.
Scripts and components based approch made it greatly extensible and easy to
understand. We have added our own scripts and components to make it more
useful for our workflows. At the same time each individual can extend it
further to suit their own needs and workflows without affecting others.

Literally we only need this repo to setup our systems from scratch and
get back to work in no time.

We were a little tired of having long alias files and everything strewn
about (which is extremely common on other dotfiles projects, too).
This led to our project being much more topic-centric. We realized we could
split a lot of things up into the main areas we used (NodeJS, React/Vue/Angular,
Laravel, VS Code, Docker, git, system libraries, and so on), so we structured the
project accordingly. Sharing our productivity hacks with all became a
problem we wanted to address.

If you're interested in the philosophy behind why projects like these are
awesome, you might want to read post on the subject

- <https://jogendra.dev/i-do-dotfiles>
- <http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/>

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## what's inside

A lot of stuff. Seriously, a lot of stuff. Check them out in the file browser
above and see what components may mesh up with you.
[Fork it](https://github.com/kalkanisys/dotfiles/fork), remove what you don't
use, and build on what you do use.

This repo is meant to work on Ubuntu 20.04 or above and Ubuntu flavored systems.
It may work on other debian based systems (by excluding certain things) as well
but we have not tested it on other systems.

## components

There's a few special files in the hierarchy.

- \_os: This folder contains scripts that are specific to the OS, things to be installed
  on fresh system globally. For example installing chrome, docker, vscode etc.
  Scripts under `global` requires sudo access and are required to run only once but can
  be run multiple times without any issues. Scripts under `user` are to be run for
  each user and can be run multiple times without any issues.
- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`.
  To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.
- **topic/\*install.ext.sh**: Any file ending in `install.ext.sh` gets executed
  when you run `script/install.ext`. This is so you can keep all of those
  optional items your dotfiles but still install individual items or executed `script/install.ext`
  to install all extensions/extras.

## install

Run this:

```sh
git clone https://github.com/kalkanisys/dotfiles.git ~/.dotfiles
cd ~/.dotfiles

# Optionally to install basic development tools and applications
_os/global/install-all.sh
# OR
# _os/global/install-core.sh # To install minimal things

script/install
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane defaults,
and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## bugs

We want this to work for everyone; that means when you clone it down it should
work for you even though you may not have `rbenv` installed, for example. That
said, We do use this as _our_ dotfiles, so there's a good chance We may break
something if We forget to make a check for a dependency.

If you're brand-new to the project and run into any blockers, please
[open an issue](https://github.com/kalkanisys/dotfiles/issues) on this repository
and We'd love to get it fixed for you!

## thanks

We forked [Ryan Bates](https://github.com/holman)' excellent
[dotfiles](https://github.com/holman/dotfiles).
