---
layout: default
title: Windows Setup
description: Instructions for setting up on Windows
---

### WSL2 (Windows Subsystem for Linux version 2) 
WSL (Windows Subsystem for Linux) allows you to use Linux on top of Windows 10 natively, WSL2 is the most recent version of WSL and it is more stable. If you already have WSL(1), it is easy to convert to WSL2 (see [Instructions to convert WSL(1) to WSL2](https://ericsysmin.com/2019/07/13/converting-wsl-1-operating-systems-to-wsl-2-on-windows/)), if your Windows 10 is patched with 1909 or older, see [Install WSL2 on Windows 10 1909 or older](https://pureinfotech.com/install-windows-subsystem-linux-2-windows-10/).

#### Install WSL2 on Windows 10

1. Open **Start (Win key)** and search for **Command Prompt** (type directly) in your applications, right click and select `Run as administrator`. Select `Yes` on the prompt that appears asking if you want to allow the app to make changes to your device.
2. Type the following into the **Command Prompt** and then press `Enter`:

   ```bash
   wsl --install
   ```

3. Restart your computer to finish the WSL installation and continue with the Linux distro setup.
4. Open **Start (Win key)** and search for **Command Prompt** (type directly) in your applications, right click and select `Run as administrator`.
   Select `Yes` on the prompt that appears asking if you want to allow the app to make changes to your device.
5. Type the following command to view a list of available WSL distros you can install on Windows 10 and press Enter:

   ```bash
   wsl --list --online
   ```

6. Type the following command to install the WSL with a specific distro (Ubuntu-18.04 recommended) and press Enter (it will start the distro if it has already been installed):

   ```bash
   wsl --install -d <DISTRO-NAME>
   ```
   
7. Restart your computer, open **Start (Win key)** and search for **Ubuntu**, right click on **Ubuntu \<DISTRO-NAME\> (18.04.5) on Windows (App)** and you are supposed to have the **WSL2 Ubuntu 18.04** terminal open. Now, you are ready to rock!
8. You will be prompted to `Enter new UNIX username`(This will create a local user account and you will be automatically logged in to \<DISTRO-NAME\> as this user), you can use any combination of alphanumeric characters here for your username, but a good choice is `<first_initial><last_name>` (e.g., `jsmith` for John Smith), You will then be prompted to enter a new password(Choose something easy to remember as you will find yourself using it frequently.).

From this point on whenever the instructions specify to **"open/type a command in a terminal"** please assume you are supposed to open/type the command in the Ubuntu application (Open **Start (Win key)** and search for **Ubuntu**, right click on **Ubuntu \<DISTRO-NAME\> (18.04.5) on Windows (App)**).

### Bash shell (in the WSL2 Ubuntu)

You already have it, now that you’ve installed the WSL2!

### Git (in the WSL2 Ubuntu)

You already have it, now that you’ve installed the WSL2!

### VSCode (on your Windows)

1. Go to [this page](https://code.visualstudio.com/) and click the download button, then run the `.exe` file.
1. Leave all the defaults during the installation with the following exception:
      - Please make sure the box labelled "Register Code as an editor for supported file types" is selected

#### VSCode extensions

These extentions will allow you to work with the WSL2 Ubuntu with GUI.

1. Open the VSCode application, go to **Extentions tab** (on the left) and search for ```Remote - WSL``` or ```VSCode Terminal For Ubuntu```, install them; (Usually, VSCode can detect your WSL Ubuntu installation and remind you to install these related extentions).
1. Type `code .` into **the terminal (Ubuntu \<DISTRO-NAME\> (18.04.5) on Windows (App))** and press `Enter`.
   You should see a message reading "Installing VS Code Server" and then a new VSCode window (entitled: Get Started - \<USER NAME\> [WSL: Ubuntu \<DISTRO-NAME\>] - Visual Studio Code) will open up.
1. Press `Ctrl+Shift+P` in the new VSCode window and type "Extensions: Install extensions" into the search bar that appears at the top of the screen, select the one that reads "Extensions: Install extensions".
2. A new panel should appear on the left-hand side of the screen with a search bar.
   Search for each of the following extensions and press `Install in WSL: Ubuntu-\<DISTRO-NAME\>` for the first entry that appears. (The author listed for all of these extensions should be "Microsoft".)
      - Python Extension Pack (n.b., you will need to reload VSCode after installing this)
      - Live Share (n.b., you may need to press "Ctrl/Cmd+Shift+P" and type "install extensions" again after installing this)
      - Live Share Extension Pack
      - Docker
      - Remote - WSL

### Python (in the WSL2 Ubuntu)

We are going to install miniconda to manage the python envirenment in our WSL2 Ubuntu using the **VSCode terminal** (at the bottom of the VSCode main window, working with this terminal is equavalent to ssh to the WSL2 Ubuntu) or the WSL Ubuntu terminal (Open **Start (Win key)** and search for **Ubuntu**, right click on **Ubuntu \<DISTRO-NAME\> (18.04.5) on Windows (App)**).

1. Type the following lines (separately) into the terminal and press `Enter` after each one:

   ``` bash
   wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
   bash Miniconda3-latest-Linux-x86_64.sh
   ```

1. A license agreement will be displayed and the bottom of the terminal will read `--More--`.
   Press `Enter` or the space bar until you are prompted with "Do you accept the license terms? [yes|no]."
   Type `yes` and then press `Enter`
1. The installation script will inform you that it is going to install into a default directory (e.g., `/home/$USER/miniconda3`).
   Leave this default and press `Enter`.
1. When you are asked "Do you wish the installer to initialize Miniconda3 by running conda init? [yes|no]," type `yes` and press `Enter`.
   Exit (or re-open) the terminal once the installation has finished.
1. Re-open the Ubuntu application.
   Type `which python` into the terminal and it should return a path (e.g., `/home/$USER/miniconda3/bin/python`).
   - If you do not see a path like this then please try ```cd miniconda3/bin/``` then `./conda init`, close (or re-open) your terminal, and repeat this step.
     If your issue is still not resolved skip the following step and contact an instructor on the #help-installation channel on the BHS Slack.
1. Type the following to remove the installation script that was downloaded:

   ``` bash
   rm ./Miniconda3-latest-Linux-x86_64.sh
   ```

#### Python packages

Open a terminal and type the following commands:

``` bash
conda config --append channels conda-forge
conda config --set channel_priority strict
conda install -y flake8 ipython jupyter jupyterlab matplotlib nibabel nilearn numpy pandas scipy seaborn
```
This installation step will take some time. After the installation is finished, you are ready to use VSCode to edit your python script or jupyter notebook in your WSL2 Ubuntu distribution. 

Warning: You may be asked to specify the python envirenment/kernel if you want to run jupyter notebook, VSCode will give you several options and choose the one you would like to use. You can always choose the result obtained from `which python` (e.g., `/home/$USER/miniconda3/bin/python` in your WSL2 Ubuntu distribution), this is the default python envirenmet managed by `miniconda`.

### Docker Desktop for Windows 

You are supposed to install Docker Desktop after you have successfully installed WSL2.

1. Download the [Download Docker Desktop for Windows](https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe).
2. Double-click **Docker Desktop Installer.exe** to run the installer.
3. When prompted, ensure the Use WSL 2 instead of Hyper-V option on the Configuration page is selected or not depending on your choice of backend.
4. Follow the instructions on the installation wizard to authorize the installer and proceed with the install.
5. When the installation is successful, click Close to complete the installation process. (If your admin account is different to your user account, you must add the user to the docker-users group. Run **Computer Management** as an administrator and navigate to Local Users and Groups > Groups > docker-users. Right-click to add the user to the group. Log out and log back in for the changes to take effect.)
7. Open **Start (Win key)** and search for **Docker Desktop** (type directly) in your applications, left click to `Run`.
8. You can always use docker comandline tools in **Command Prompt** or **PowerShell**.

The above step-by-step instructions are distilled from [here](https://docs.docker.com/toolbox/toolbox_install_windows/). If you have questions during the installation procedure please check those links for potential answers!)

[back](./setup.html)
