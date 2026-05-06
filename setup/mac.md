---
layout: default
title: Mac Setup
description: Instructions for setting up on Mac
---

### Bash shell

On Mac OS, you already have a `bash` shell installed!
However, depending on your OS version, you may have a different _default_ shell (e.g., `zsh`).

To check your default shell, open a terminal and type `echo $SHELL`.
If the output reads `/bin/bash`, you are all set!

If the output is something else (e.g., `/bin/zsh`), we strongly recommend changing your default shell to `bash` for this course.
To do so,

1. Run:
   ```bash
   chsh -s /bin/bash
   ```
2. Enter your password when prompted.
3. Close and re-open the terminal.
4. Run `echo $SHELL` again to confirm it now shows `/bin/bash`.

All instructions in the course will assume you are using `bash`.

> **Note**: After the course, you can switch back to your original shell using `chsh -s /bin/zsh` (or whatever your original shell was).

### Homebrew

Install the [Homebrew](https://brew.sh/) package manager: open a terminal window, type this command, then press `Enter`:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Git

You may already have it!
Try opening a terminal and typing `git --version`.

If this prints something like `git version X.XX.X`, git is already installed! If so, skip to the next section on "Git configuration".

If `git` is not installed, then you might get a pop-up window prompting you to install the Xcode Command Line Tools, which we will **not** do: click "Cancel". We will install `git` with Homebrew instead.

In the terminal, run:

```bash
brew install git
```

(If you already installed `git` through the Xcode Command Line Tools, don't worry, that is fine.)

Verify the installation by running `git --version`: this time you should see something like `git version X.XX.X`.

{% include extra-git-setup.html %}

#### Create an SSH key for GitHub

When following the GitHub docs in the steps below, make sure to select the **Mac** instructions at the top of the page.

{% include gh-ssh-key-setup.html %}

### VSCode

1. On this [page](https://code.visualstudio.com/docs/setup/mac#_install-vs-code-on-macos), follow all steps in the following two sections **only**:
   - [Install VS Code on MacOS](https://code.visualstudio.com/docs/setup/mac#_install-vs-code-on-macos)
      - To begin the download, click on the "Download Visual Studio Code" link
   - [Launch VS Code from the command line](https://code.visualstudio.com/docs/setup/mac#_launch-vs-code-from-the-command-line)
      - Use the method "Configure the path with VS Code" to set up the `code` command in your terminal

   You can skip all other sections on that page.

2. To confirm that everything worked, open a terminal and type `code .` (include the period).
This should open the current directory in a VSCode window.

{% include vs-code-workspace-trust-popup.html %}

#### VSCode extensions

1. Open the Visual Studio Code application.
2. Open the Extension side panel by pressing `Cmd+Shift+X`.
   In the search bar at the top of this panel
   search for each of the following extensions and press `Install` for the first entry that appears.

{% include vs-code-extensions.html %}

{% include copilot-setup.html %}

### Python

1. Open a new terminal and type the following command, then press `Enter`.
   - If you are on an Apple Silicon Mac (upper left corner Apple menu -> `About This Mac` says something like "Chip: Apple M1" (or M2, etc.)):
      ```bash
      curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh
      ```
   - Otherwise:
      ```bash
      curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
      ```

2. Run the installation script:
   ```bash
   bash Miniconda3-latest-MacOSX-x86_64.sh
   ```
   - A license agreement will be displayed and the bottom of the terminal will read `--More--`.
   Press `Enter` or the space bar until you are prompted with `Do you accept the license terms? [yes|no]`.
   Type `yes` and then press `Enter`.
   - The installer will show a default installation directory (e.g., `/Users/$USER/miniconda3`).
   Leave this default and press `Enter`.
   - When you are asked `Do you wish the installer to initialize Miniconda3 by running conda init? [yes|no]`, type `yes` and press `Enter`.
   - Exit the terminal once the installation has finished.
3. Re-open a terminal.
   Type `which python` into the terminal and check that it returns a path like: `/Users/$USER/miniconda3/bin/python`.
   - If you do not see a path like this, try typing `conda init`, closing your terminal, and repeating this step.
     If your issue is still not resolved, skip the following step and contact an instructor on the #help-installation channel of the QLS612-BHS Slack.
4. Type the following to remove the installation script that was downloaded:

   ```bash
   rm ./Miniconda3-latest-MacOSX-x86_64.sh
   ```

#### Python packages

{% include setup-python-package.html %}

### Docker

1. Go to
   [this page](https://docs.docker.com/desktop/setup/install/mac-install/)
   and press the button `Docker Desktop for...` corresponding to the chip of your machine (see the image below).

   [![](../assets/images/docker_mac.png)](https://docs.docker.com/desktop/setup/install/mac-install/)

1. Open the `Docker.dmg` file that is downloaded and drag and drop the icon to the Applications folder.

1. Open the Docker application and enter your password.
   An icon will appear in the status bar in the top-left of the screen.
   Wait until it reads `Docker Desktop is now up and running!`

1. Open a new terminal and type `docker run hello-world`.
   If the installation worked, a brief introductory message should be printed to the screen.

The above step-by-step Docker instructions are distilled from
[here](https://docs.docker.com/desktop/setup/install/mac-install/).
If you have questions during the installation procedure please check that link for potential answers!

### Install the `tree` command

`tree` is a helpful command for viewing directory structures, and is strongly recommended.

1. Open a terminal, and check if you have `tree` already installed by running `tree --version`.
   - If you see a version number, you're all set!
   - If you see a message like `tree: command not found`, install it by running:
      ```bash
      brew install tree
      ```

---

<a href="{{ site.url }}/setup/setup.html"><button>BACK</button></a>
