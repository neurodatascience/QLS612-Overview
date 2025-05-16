---
layout: default
title: Mac Setup
description: Instructions for setting up on Mac
---

### Bash shell

You already have it! Depending on which version of Mac OS you’re running you may
need to type `bash` inside the terminal to access it. To check whether this is
necessary, follow these steps:

1. Open a terminal and type `echo $SHELL`. If it reads `/bin/bash` then you are
   all set!

Note: If you are using Mac Catalina (10.15.X) then it is possible your default
shell is NOT CORRECT. To set the default to bash, type `chsh -s /bin/bash` in
the terminal, enter your password when prompted, and then close + re-open the
terminal.

### Git

You may already have it!
Try opening a terminal and typing `git --version`.
If you do **not** see something like “git version X.XX.X” printed out, then follow these steps:

1. Follow
   [this link](https://sourceforge.net/projects/git-osx-installer/files/git-2.23.0-intel-universal-mavericks.dmg/download?use_mirror=autoselect)
   to automatically download an installer.
1. Double click the downloaded file (`git-2.23.0-intel-universal-mavericks.dmg`)
   and then double click the `git-2.23.0-intel-universal-mavericks.pkg` icon
   inside the dmg that is opened.
1. Follow the on-screen instructions to install the package.

{% include extra-git-setup.html %}

#### Creating an SSH key for GitHub

When following the GitHub docs below, make sure to select the **Mac** instructions.

{% include gh-ssh-key-setup.html %}

### VSCode

1. Go to [this page](https://code.visualstudio.com/) and click the download button.
1. Unzip the downloaded file (for example, `VSCode-darwin-stable.zip`)
   and moving the resulting `Visual Studio Code` file to your Applications directory.

#### VSCode extensions

1. Open the Visual Studio Code application
1. Type `Cmd+Shift+P` to open the "command palette" at the top of the screen and then enter
   `Shell command: Install 'code' command in PATH`.
   Select the highlighted entry.
   A notification box should appear in the bottom-right corner indicating that the command was installed successfully.
1. Open the Extension side panel by pressing `Cmd+Shift+X`.
   In the search bar at the top of this panel
   search for each of the following extensions and press `Install` for the first entry that appears.

{% include vs-code-extensions.html %}

### Python

1. Open a new terminal and type the following lines (separately) into the
   terminal, pressing `Enter` after each one:

   ```bash
   curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
   bash Miniconda3-latest-MacOSX-x86_64.sh
   ```

1. A license agreement will be displayed and the bottom of the terminal will read `--More--`.
   Press `Enter` or the space bar until you are prompted with
   "Do you accept the license terms? [yes|no]."
   Type `yes` and then press `Enter`
1. The installation script will inform you that it is going to install into a
   default directory (e.g., `/home/$USER/miniconda3`).
   Leave this default and press `Enter`.
1. When you are asked "Do you wish the installer to initialize Miniconda3 by running conda init? [yes|no],"
   type `yes` and press `Enter`.
   Exit the terminal once the installation has finished.
1. Re-open a terminal.
   Type `which python` into the terminal and it should return a path (e.g., `/home/$USER/miniconda3/bin/python`).
   - If you do not see a path like this then please try typing `conda init`,
     closing your terminal, and repeating this step.
     If your issue is still not resolved skip the following step
     and contact an instructor on the `#help-installation` channel of the Slack workspace.
1. Type the following to remove the installation script that was downloaded:

   ```bash
   rm ./Miniconda3-latest-MacOSX-x86_64.sh
   ```

#### Python packages

{% include setup-python-package.html %}

### Docker

1. Go to
   [this page](https://docs.docker.com/desktop/install/mac-install/)
   and press the button `Docker Desktop for...` corresponding to the chip of your machine (see the image below).

   [![](../assets/images/docker_mac.png)](https://docs.docker.com/desktop/install/mac-install/)

1. Open the `Docker.dmg` file that is downloaded and drag and drop the icon to the Applications folder.

1. Open the Docker application and enter your password.
   An icon will appear in the status bar in the top-left of the screen.
   Wait until it reads `Docker Desktop is now up and running!`

1. Open a new terminal and type `docker run hello-world`.
   A brief introductory message should be printed to the screen.

The above step-by-step Docker instructions are distilled from
[here](https://docs.docker.com/docker-for-mac/install/).
If you have questions during the installation procedure please check that link for potential answers!

---

<a href="{{ site.url }}/setup/setup.html"><button>BACK</button></a>
