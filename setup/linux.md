---
layout: default
title: Linux Setup
description: Instructions for setting up on Linux
---

### Bash shell

You already have it! Depending on which version of Linux you're running you may
need to type `bash` inside the terminal to access it. To check whether this is
necessary, follow these steps:

1. Open a terminal and type `echo $SHELL`.
   -  If it reads `/bin/bash` then you are all set!
   -  If not, whenever the instructions read **open a terminal**,
      please assume you are to open a terminal, type `bash`,
      and the proceed with the instructions as specified.

### Git

You may already have it;
try typing `sudo apt-get install git` (Ubuntu, Debian)
or `sudo dnf install git` (Fedora) inside the terminal.
If you are prompted to install it follow the instructions on-screen to do so.

{% include extra-git-setup.html %}

#### Create an SSH key for GitHub

When following the GitHub docs in the steps below, make sure to select the **Linux** instructions at the top of the page.

{% include gh-ssh-key-setup.html %}

### VSCode

1. Go to [this page](https://code.visualstudio.com/) and click the download
   button for either the `.deb` (Ubuntu, Debian) or the `.rpm` (Fedora, CentOS) file.
2. Double-click the downloaded file to install VSCode
   (you may be prompted to type your administrator password during the install).
3. To confirm that everything worked, open a terminal and type `code .` (include the period).
   This should open the current directory in a VSCode window.

{% include vs-code-workspace-trust-popup.html %}

#### VSCode extensions

1. Open the Visual Studio Code application.
2. Open the Extension side panel by pressing `Ctrl+Shift+X`.
   In the search bar at the top of this panel
   search for each of the following extensions and press `Install` for the first entry that appears.

{% include vs-code-extensions.html %}

{% include copilot-setup.html %}

### Python

1. Open a new terminal and type the following lines (separately) into the
   terminal, pressing `Enter` after each one:

   ```bash
   wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
   bash Miniconda3-latest-Linux-x86_64.sh
   ```

2. A license agreement will be displayed and the bottom of the terminal will read `--More--`.
   Press `Enter` or the space bar until you are prompted with
   `Do you accept the license terms? [yes|no]`.
   Type `yes` and then press `Enter`.
3. The installation script will inform you that it is going to install into a default directory (e.g., `/home/$USER/miniconda3`).
   Leave this default and press `Enter`.
4. When you are asked
   `Do you wish the installer to initialize Miniconda3 by running conda init? [yes|no]`,
   type `yes` and press `Enter`.
   Exit the terminal once the installation has finished.
5. Re-open a new terminal.
   Type `which python` into the terminal and check that it returns a path like `/home/$USER/miniconda3/bin/python`.
   - If you do not see a path like this, try typing `conda init`,
     closing your terminal, and repeating this step.
     If your issue is still not resolved skip the following step
     and contact an instructor on the `#help-installation` channel of the Slack workspace.
6. Type the following to remove the installation script that was downloaded:

   ```bash
   rm ./Miniconda3-latest-Linux-x86_64.sh
   ```

#### Python packages

{% include setup-python-package.html %}

### Docker

1. You will be following different instructions depending on your distro
   ([Ubuntu](https://docs.docker.com/engine/install/ubuntu/),
   [Debian](https://docs.docker.com/engine/install/debian/),
   [Fedora](https://docs.docker.com/engine/install/fedora/),
   [CentOS](https://docs.docker.com/engine/install/centos/)). Make sure to
   follow the "Install using the repository" method!
2. Once you've installed Docker make sure to follow the
   [post-install instructions](https://docs.docker.com/engine/install/linux-postinstall/)
   as well. You only need to do the "Manage Docker as a non-root user" and
   "Configure Docker to start on boot" steps.
3. Open a new terminal and type `docker run hello-world`.
   If the installation worked, a brief introductory message should be printed to the screen.

### Install the `tree` command

`tree` is a helpful command for viewing directory structures, and is strongly recommended.

1. Open a terminal, and check if you have `tree` already installed by running `tree --version`.
   - If you see a version number, you're all set!
   - If you see a message like `tree: command not found`, install it by running:
      ```bash
      sudo apt-get update && sudo apt-get install -y tree
      ```

---

<a href="{{ site.url }}/setup/setup.html"><button>BACK</button></a>
