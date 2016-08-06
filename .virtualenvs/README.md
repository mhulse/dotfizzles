## What is this folder?

Used for Python’s virtual environments.

A Virtual Environment is a tool to keep the dependencies required by different projects in separate places, by creating virtual Python environments for them. It solves the “Project X depends on version 1.x but, Project Y needs 4.x” dilemma, and keeps your global site-packages directory clean and manageable.

## Development notes

Assuming you’re using [Homebrew](http://brew.sh/) as a package manager.

### Python3 boilerplate

Install Python:

```bash
$ brew install python3
```

Create the “FOO” environment:

```bash
$ pyvenv ~/.virtualenvs/FOO
```

Activate:

```bash
$ source ~/.virtualenvs/FOO/bin/activate
```

Deactivate (when activated):

```bash
$ deactivate
```

Note, `pip` comes with Python 3.4 `pyvenv`:

```bash
$ which pip
~/.virtualenvs/FOO/bin/pip
```

Nice!

To make activation quick, add an alias to your `.bash_profile`:

```bash
# Simplify pyvenv activation for "FOO" environment:
alias FOO='source ~/.virtualenvs/gutenberg/bin/activate'
```

And then reload:

```bash
source ~/.bash_profile
```

Now:

```bash
$ FOO
```

… which activates your “FOO” virtual environment; now you can install packages, using `pip`, into your environment’s `site-packages`.
