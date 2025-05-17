---
layout: default
title: Windows Setup
description: Instructions for setting up on Windows
---

### WSL2 (Windows Subsystem for Linux version 2)

WSL (Windows Subsystem for Linux) allows you to use Linux on top of Windows
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
   the latest LTS version of Ubuntu (24.04 LTS at time of writing) as the default distribution.
   If this is the case, an Ubuntu terminal will open to resume automatic setup,
   and afterwards will ask you set up a username and password.
   **If this applies to you, skip to Step 9.
   Otherwise, continue with Step 6.**
6. In the **Command Prompt**, type the following command to view a list of
   available WSL distros you can install and press Enter:

   ```powershell
   wsl --list --online
   ```

7. Type the following command to install a specific distro (Ubuntu-22.04
   recommended) in WSL and press `Enter` (it will start the distro if it has
   already been installed):

   ```powershell
   wsl --install -d <DISTRO-NAME>
   ```

8. Restart your computer, open **Start (Win key)** and search for **Ubuntu**,
   and click on the app called **Ubuntu** or **Ubuntu \<VERSION-NUMBER\>**. You should now have
   the **WSL2 Ubuntu 22.04** terminal open. Now, you are ready to rock!
9. You will be prompted to `Enter new UNIX username` (this will create a local user account for the **Ubuntu WSL instance**
   and you will be automatically logged in to your Ubuntu distro as this user).
   You can use any combination of alphanumeric characters for your username,
   but a good choice is `<first_initial><last_name>` (e.g., `jsmith` for John Smith).
   You will then be prompted to enter a new password
   (choose something easy to remember as you will use it frequently for this course).

From this point on, whenever the instructions specify to **"open/type a command
in a terminal"**, please open/type the command in the
Ubuntu application (open **Start (Win key)**, search for **Ubuntu**, and
click **Ubuntu** or **Ubuntu \<VERSION-NUMBER\>**).

Need more help?

- [https://learn.microsoft.com/en-us/windows/wsl/install](https://learn.microsoft.com/en-us/windows/wsl/install)
- [https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-11-with-gui-support#2-install-wsl](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-11-with-gui-support#2-install-wsl)

### Bash shell (in the WSL2 Ubuntu)

You already have it, now that you’ve installed the WSL2!

### Git (in the WSL2 Ubuntu)

You already have it, now that you’ve installed the WSL2!

{% include extra-git-setup.html %}

#### Creating an SSH key for GitHub

When following the GitHub docs below, make sure to select the **Linux** instructions.

{% include gh-ssh-key-setup.html %}

### VSCode (on your Windows)

1. Go to [this page](https://code.visualstudio.com/) and click the download
   button, then run the `.exe` file.
2. Leave all the defaults during the installation with the following exception:
   - Make sure the box labeled "Register Code as an editor for supported
     file types" is selected

#### VSCode extensions

These extensions will allow you to work with WSL2 Ubuntu more seamlessly in VSCode.

1. Open Visual Studio Code, click on the **Extensions** icon in the left sidebar
   (or press `Ctrl+Shift+X`), and search for and install the **WSL** extension
   (usually, VSCode can automatically detect your WSL Ubuntu installation and remind you to install related extensions).
1. In a **terminal** (Ubuntu), type `code .` and press `Enter`.
   You should see a  message reading `Installing VS Code Server` and then a new VSCode window
   (might be called `Get Started - <USERNAME> [WSL: Ubuntu <VERSION-NUMBER>] Visual Studio Code`) will open up.
   It should say `WSL` in the bottom left corner of the window.
1. In the **WSL VSCode window**, open the **Extensions** panel again (or `Ctrl+Shift+X`).
   Search for each of the following extensions and click `Install`
   (or `Install in WSL: Ubuntu`, depending on whether you already have the extension installed locally) for the first entry that appears.
   If no `Install` button is available and the extension is not grayed out,
   it means it is already installed.

{% include vs-code-extensions.html %}

To confirm the extensions have been installed correctly, clear the Extensions search bar.
You should now see an extensions category called `WSL: UBUNTU - INSTALLED`
(you may also see one for `LOCAL - INSTALLED`).
Verify that the extensions you have just installed exist in the list under `WSL: UBUNTU - INSTALLED`.

#### WSL2 Ubuntu terminal in VSCode

You can open the terminal in your **WSL VSCode window** (if you do not already have
one at the bottom of the window) by navigating to **View > Terminal** in
the top menu bar (or, `` Ctrl+` ``). This terminal in a WSL VSCode window
is equivalent to the WSL2 Ubuntu terminal we get from opening the Ubuntu app
itself (i.e., like we did from the **Start (Win key)** menu), but with the
advantage of having all the graphical features of VSCode at your disposal.

Reference: [https://code.visualstudio.com/docs/remote/wsl](https://code.visualstudio.com/docs/remote/wsl)

### Python (in the WSL2 Ubuntu)

We are going to install miniconda to manage the Python environment in our WSL2
Ubuntu using the **VSCode terminal** (alternatively, you can use the WSL Ubuntu
terminal directly: open **Start (Win key)** and search for the **Ubuntu** app).

1. Type the following lines (separately) into the terminal and press `Enter`
   after each one:

   ```bash
   wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
   bash Miniconda3-latest-Linux-x86_64.sh
   ```

2. A license agreement will be displayed and the bottom of the terminal will read `--More--`.
   Press `Enter` or the space bar until you are prompted with
   `Do you accept the license terms? [yes\|no].`
   Type `yes` and then press `Enter`.
3. The installation script will inform you that it is going to install into a
   default directory (e.g., `/home/$USER/miniconda3`).
   Leave this default and press `Enter`.
4. When you are asked "Do you wish the installer to initialize Miniconda3 by
   running conda init? [yes\|no]," type `yes` and press `Enter`.
   Close the terminal once the installation has finished.
5. Re-open the Ubuntu terminal. Type `which python` into the terminal and it
   should return a path (e.g., `/home/$USER/miniconda3/bin/python`).
   - If you do not see a path like this then please try `cd miniconda3/bin/`
     then `./conda init`, close (or re-open) your terminal, and repeat this step.
     If your issue is still not resolved skip the following step and
     contact an instructor on the `#help-installation` channel on the Slack workspace.
6. Type the following to remove the installation script that was downloaded:

   ```bash
   rm ./Miniconda3-latest-Linux-x86_64.sh
   ```

#### Python packages

{% include setup-python-package.html %}

Now you are ready to use VSCode to edit your Python script or Jupyter
Notebook in your WSL2 Ubuntu distribution.

#### Reminders:

- You may need to reactivate the `qlsc612` environment each time you start the
   WSL2 (e.g., in VSCode) with `conda activate qlsc612`.
- When running a Jupyter notebook in VSCode (remote access to your WSL2 Ubuntu)
   you will also need to specify the Python environment (kernel).
   There will be a `Select Kernel` button in the top right corner of the Jupyter notebook,
   click it and select the one reading something like _qlsc612
   (Python 3.x.y) ~/miniconda3/envs/qlsc612/bin/python_.
   The button should be updated to read _qlsc612 (Python 3.x.y)_.
   This is the Python environment we have just created for this course,
   make sure it is the one you are using for later modules.

### Docker Desktop for Windows

You should install Docker Desktop after you have successfully installed WSL2.

1. Go to [this page](https://docs.docker.com/desktop/install/windows-install/)
   and click "Docker Desktop for Windows", then run the downloaded installer.
2. When prompted, ensure the "Use WSL 2 instead of Hyper-V option" on the
   Configuration page is selected.
3. Follow the instructions on the installation wizard to authorize the installer
   and proceed with the install.
4. When the installation is successful, click "Close" to complete the
   installation process. (If the admin account on your computer is different to your user account, you must add the user to the docker-users group. Run **Computer
   Management** as an administrator and navigate to Local Users and Groups >
   Groups > docker-users. Right-click to add the user to the group. Log out and
   log back in for the changes to take effect.)
5. Open **Start (Win key)**, search for **Docker Desktop** in your applications, and click to run the app. 
   Once Docker Desktop has loaded, in a **WSL2 Ubuntu terminal** (in VSCode or your Ubuntu app),
   type `docker run hello-world`. 
   A brief introductory message should be printed to the screen.

#### Reminders:
- Whenever you need to use Docker, first make sure that Docker Desktop is running (open **Start (Win key)** and search for the **Docker Desktop** app)
- For this course, you should run Docker commands from a **WSL2 Ubuntu terminal**.
   However, in general you can also use Docker command-line tools in Command Prompt or PowerShell.

The above step-by-step instructions are distilled from
[here](https://docs.docker.com/desktop/setup/install/windows-install/).

---

<a href="{{ site.url }}/setup/setup.html"><button>BACK</button></a>
