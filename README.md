# Automation Framework

## Getting Setup

### Linux Terminal / WSL2

To begin, you will either have to be using linux (either natively or on a VM), or setup windows to use WSL2. If you're using
linux already, congratulations, you can skip this step. Otherwise choose the path that you feel works best for you:

#### WSL2

**Benefits**
* can continue using Windows
* easy setup
* better performance than VM
* works seamlessly with tools like vscode (with wsl plugin)

**Drawbacks**
* WSL does have bugs that sometimes are hard to figure out / work around

If you choose this path, visit [this](https://docs.microsoft.com/en-us/windows/wsl/install-win10) to get WSL2 setup.

#### Native Linux

**Benefits**
* best performance
* lots of resources to help out
* most common path

**Drawbacks**
* lots of different ways to setup can make it daunting
* can be unfamiliar for windows users

For people new to Linux [PopOS](https://pop.system76.com/) is a beginner friendly linux distribution to get you started.

#### Linux VM

Very similar to "Native Linux", except worse performance, more difficult setup and don't have to reboot to switch between
linux/windows

For those that choose this route, you can see [this guide](https://support.system76.com/articles/install-in-vm/) to get
started with PopOS in a VM.

### Nix Package Manager

> NOTE: at this point it is assumed you have a terminal available and open

Nix is a package manager based on a few simple concepts that allow it to replace more specific package managers intended
for specific languages & operating systems, such as `npm`, `pip`, `apt-get` and `pacman`.

To install (either on linux, or on WSL2) visit [the installation page](https://nixos.org/download.html) and follow
the instructions for "Getting Nix".

### Direnv (+Nix)

To install direnv, simply run the following two commands in a terminal:

* `nix-env -i direnv`
* `nix-env -i nix-direnv`

If you don't know what a shell is, chances are you are using the `bash` shell, and will have to add the following line to
the end your `~/.bashrc` file:

`eval "$(direnv hook bash)"`

> If you know you are using a shell other than bash see [here](https://direnv.net/docs/hook.html).
> 
If you know how to do this already, great! You're done and can skip to the next section. Otherwise, we are going to install
a text editor by running the following command in a terminal:

`nix-env -i micro`

and then opening the `~/.bashrc` file in `micro` using the command:

`micro ~/.bashrc`

Then add the following to the bottom of the file:

`eval "$(direnv hook bash)"`

Before saving and closing the text editor.

### Git

TODO: how to clone the repo

### Enabling Direnv

In a terminal, navigate to the root of the repository you have cloned, and execute the following command:

`direnv allow`

This gives `direnv` permission to automatically manage the environments dependencies for you. Every time you
navigate into this directory in a terminal, `direnv` will make those dependencies available to you. Likewise,
if you leave the directory it will remove them  from your path.
