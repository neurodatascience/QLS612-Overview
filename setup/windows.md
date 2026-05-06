---
layout: default
title: Windows Setup
description: Instructions for setting up on Windows
---

### WSL2 (Windows Subsystem for Linux version 2)

WSL (Windows Subsystem for Linux) lets you use Linux on top of Windows
natively.
WSL2 is the latest version of WSL and is more stable with improved performance and compatibility.
If you already have WSL(1), it is easy to convert to WSL2 (see [Instructions to convert WSL(1) to WSL2](https://learn.microsoft.com/en-us/windows/wsl/install#upgrade-version-from-wsl-1-to-wsl-2)).
If your Windows 10 is version 1909 or older,
see the "Install WSL2 on Windows 10 (older versions)" section on this [page](https://pureinfotech.com/install-windows-subsystem-linux-2-windows-10/).

#### Install WSL2 on Windows 10 or 11

1. Open **Start (Win key)** and search for **Command Prompt** (type directly) in your applications,
   right-click and select `Run as administrator`.
   Select `Yes` on the prompt that appears asking if you want to allow the app to make changes to your device.
2. Type the following into the **Command Prompt**, then press `Enter`:

   ```powershell
   wsl --install
   ```
3. Restart your computer to finish the WSL installation and continue with the Linux distro setup.
4. Open **Start (Win key)** and search for **Command Prompt** in your
   applications, right-click and select `Run as administrator`.
   Select `Yes` on the prompt that appears asking if you want to allow the app to make changes to your device.
5. At this point, if you are on a newer version of Windows 10 or Windows 11,
   the command from Step 2 should have installed, in addition to WSL,
   the latest LTS version of Ubuntu (26.04 LTS at time of writing) as the default distribution.
   If this is the case, an Ubuntu terminal will open to resume automatic setup,
   and afterwards will ask you set up a username and password.
   **If this applies to you, skip to Step 9.
   Otherwise, continue with Step 6.**
6. In the **Command Prompt**, type the following command to view a list of
   available WSL distros you can install and press Enter:

   ```powershell
   wsl --list --online
   ```

7. Type the following command to install a specific distro (Ubuntu-26.04
   recommended) in WSL and press `Enter` (it will start the distro if it has
   already been installed):

   ```powershell
   wsl --install -d <DISTRO-NAME>
   ```

8. Restart your computer, open **Start (Win key)** and search for **Ubuntu**,
   and click on the app called **Ubuntu** or **Ubuntu \<VERSION-NUMBER\>**. You should now have
   the **WSL2 Ubuntu 26.04** terminal open. Now, you are ready to rock!
9. You will be prompted to `Enter new UNIX username` (this will create a local user account for the **Ubuntu WSL instance**
   and you will be automatically logged in to your Ubuntu distro as this user).
   You can use any combination of alphanumeric characters for your username,
   but a good choice is `<first_initial><last_name>` (e.g., `jsmith` for John Smith).
   You will then be prompted to enter a new password
   (**store this password in a safe place, you will need to use it during the course**).

From this point on, whenever the instructions specify to **"open/type a command
in a terminal"**, please do so using the
Ubuntu application (open **Start (Win key)**, search for **Ubuntu**, and
click **Ubuntu** or **Ubuntu \<VERSION-NUMBER\>**).
Do not use Command Prompt or Powershell for the remaining steps unless explicitly stated.

Need more help?

- [https://learn.microsoft.com/en-us/windows/wsl/install](https://learn.microsoft.com/en-us/windows/wsl/install)
- [https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-11-with-gui-support#2-install-wsl](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-11-with-gui-support#2-install-wsl)

### Bash shell (in the WSL2 Ubuntu)

You already have it, now that you’ve installed the WSL2!

### Git (in the WSL2 Ubuntu)

You already have it, now that you’ve installed the WSL2!

{% include extra-git-setup.html %}

#### Create an SSH key for GitHub

> **Important**: When following the GitHub docs in the steps below, make sure to:
> - Select the **Linux** instructions at the top of the page
> - Run all commands in your Ubuntu terminal

{% include gh-ssh-key-setup.html %}

### VSCode (on your Windows)

1. Go to [this page](https://code.visualstudio.com/) and click the download
   button, then run the `.exe` file.
2. Leave all the defaults during the installation, but make sure that "Register Code as an editor for supported file types" is selected.

#### VSCode extensions

These extensions will allow you to work with WSL2 Ubuntu more seamlessly in VSCode.

1. Open Visual Studio Code, click on the **Extensions** icon in the left sidebar
   (or press `Ctrl+Shift+X`), and search for and install the **WSL** extension
   (usually, VSCode can automatically detect your WSL Ubuntu installation and prompt you to install related extensions in the bottom right corner).
2. In a **terminal** (Ubuntu), type `code .` and press `Enter`.
   You should see a message reading `Installing VS Code Server`, and then a new VSCode window will open up.
   The bottom left corner of the window should read `WSL`.

{% include vs-code-workspace-trust-popup.html %}

3. In the new **WSL VSCode window**, open the **Extensions** panel again (or `Ctrl+Shift+X`).
   Search for each of the following extensions and click `Install`
   (or `Install in WSL: Ubuntu`, if you already have the extension installed locally) for the first entry that appears.
   If no `Install` button is available and the extension is not grayed out,
   it means it is already installed.

{% include vs-code-extensions.html %}

To confirm the extensions have been installed correctly, clear the **Extensions** search bar.
You should now see an extensions category called `WSL: UBUNTU - INSTALLED`
(you may also see one for `LOCAL - INSTALLED`).
Verify that the extensions you have just installed appear in the list under `WSL: UBUNTU - INSTALLED`.

#### WSL2 Ubuntu terminal in VSCode

To open the terminal in your **WSL VSCode window** (if you do not already see
one at the bottom of the window), navigate to **View > Terminal** in
the top menu bar (or `` Ctrl+` ``).

This terminal in a WSL VSCode window is equivalent to the WSL2 Ubuntu terminal we get from opening the Ubuntu app itself
(e.g., from the **Start (Win key)** menu),
but with the advantage of having all the graphical features of VSCode at your disposal.

Reference: [https://code.visualstudio.com/docs/remote/wsl](https://code.visualstudio.com/docs/remote/wsl)

{% include copilot-setup.html %}

### Python (in the WSL2 Ubuntu)

We will now install miniconda to manage the Python environment in our WSL2
Ubuntu using the **WSL VSCode terminal** (you can also use the WSL2 Ubuntu
terminal directly).

1. Type the following lines (separately) into the terminal and press `Enter`
   after each one:

   ```bash
   wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
   bash Miniconda3-latest-Linux-x86_64.sh
   ```

2. A license agreement will be displayed and the bottom of the terminal will read `--More--`.
   Press `Enter` or the space bar until you are prompted with
   `Do you accept the license terms? [yes|no].`
   Type `yes` and then press `Enter`.
3. The installer will show a default installation directory (e.g., `/home/$USER/miniconda3`).
   Leave this default and press `Enter`.
4. When you are asked `Do you wish the installer to initialize Miniconda3 by
   running conda init? [yes|no]`, type `yes` and press `Enter`.
   Close the terminal once the installation has finished (you can do this by typing `exit`).
5. Re-open the Ubuntu terminal.
   Type `which python` and check that it returns a path like: `/home/$USER/miniconda3/bin/python`.
   - If you do not see a path like this, try `cd miniconda3/bin/`
     then `./conda init`, close and re-open your terminal, then repeat this step.
     If your issue is still not resolved, skip the following step and
     contact an instructor on the `#help-installation` channel on the Slack workspace.
6. Type the following to remove the installation script that was downloaded:

   ```bash
   rm ./Miniconda3-latest-Linux-x86_64.sh
   ```

#### Python packages

{% include setup-python-package.html %}

You can now use VSCode to edit a Python script or Jupyter Notebook in your WSL2 Ubuntu distribution.

#### Reminders:

- Each time you launch the WSL2 Ubuntu, you may need to reactivate the `qlsc612` environment for the terminal with `conda activate qlsc612`.
- When running a Jupyter notebook in VSCode (remote access to your WSL2 Ubuntu),
   you will also need to specify the Python environment for the notebook (kernel).
   This will be demonstrated in class, but as a reference:
      - There will be a `Select Kernel` button in the top right corner of the Jupyter notebook window.
         Click this button and select the option that looks like _qlsc612
         (Python 3.x.y) ~/miniconda3/envs/qlsc612/bin/python_.
      - The button should now be updated to read _qlsc612 (Python 3.x.y)_.
         This is the Python environment we have just created for this course.

### Docker Desktop for Windows

Only install Docker Desktop after you have successfully installed WSL2.

1. Go to [this page](https://docs.docker.com/desktop/install/windows-install/)
   and click "Docker Desktop for Windows", then run the downloaded installer.
2. When prompted, ensure the "Use WSL 2 instead of Hyper-V" on the
   Configuration page is selected.
3. Follow the instructions in the installation wizard to authorize the installer
   and proceed with the installation.
4. Once the installation is successful, click "Close" to complete the
   installation process.
   - NOTE: If the admin account on your computer is different from your user account, you must add the user to the docker-users group. Run **Computer
   Management** as an administrator and navigate to Local Users and Groups >
   Groups > docker-users. Right-click to add the user to the group. Log out and
   log back in for the changes to take effect.
5. Open **Start (Win key)**, search for **Docker Desktop** in your applications, and click to run the app.
   Once Docker Desktop has loaded, in a **WSL2 Ubuntu terminal** (in VSCode or your Ubuntu app),
   type `docker run hello-world`.
   If the installation worked, a brief introductory message should be printed to the screen.

#### Reminders:
- Whenever you need to use Docker, first make sure that Docker Desktop is running (open **Start (Win key)** and search for the **Docker Desktop** app)
- For this course, you should always run Docker commands from a **WSL2 Ubuntu terminal**.
   However, in general, you can also use Docker command-line tools in Command Prompt or PowerShell.

The above step-by-step instructions are distilled from [https://docs.docker.com/desktop/setup/install/windows-install/](https://docs.docker.com/desktop/setup/install/windows-install/).

### Install the `tree` command

`tree` is a helpful command for viewing directory structures, and is strongly recommended.

1. Open a terminal (Ubuntu), and check if you have `tree` already installed by running `tree --version`.
   - If you see a version number, you're all set!
   - If you see a message like `tree: command not found`, install it by running:
      ```bash
      sudo apt-get update && sudo apt-get install -y tree
      ```
      You may be prompted to enter your password to proceed.
      If so, use the password for the WSL Ubuntu account you created during the WSL2 setup.

---

<a href="{{ site.url }}/setup/setup.html"><button>BACK</button></a>
