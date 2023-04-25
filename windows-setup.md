---
layout: default
title: Windows Setup
description: Instructions for setting up on Windows
---

### WSL2 (Windows Subsystem for Linux version 2) 
WSL (Windows Subsystem for Linux) allows you to use Linux on top of Windows 10 natively, WSL2 is the most recent version of WSL and it is more stable. If you already have WSL(1), it is easy to convert to WSL2 (see [Instructions to convert WSL(1) to WSL2](https://ericsysmin.com/2019/07/13/converting-wsl-1-operating-systems-to-wsl-2-on-windows/)), if your Windows 10 is patched with 1909 or older, see [Install WSL2 on Windows 10 1909 or older](https://pureinfotech.com/install-windows-subsystem-linux-2-windows-10/).

#### Install WSL2 on Windows 10 or 11

1. Open **Start (Win key)** and search for **Command Prompt** (type directly) in your applications, right click and select `Run as administrator`. Select `Yes` on the prompt that appears asking if you want to allow the app to make changes to your device.
2. Type the following into the **Command Prompt**, then press `Enter`:

   ```powershell
   wsl --install
   ```
3. Restart your computer to finish the WSL installation and continue with the Linux distro setup.
4. Open **Start (Win key)** and search for **Command Prompt** in your applications, right click and select `Run as administrator`. Select `Yes` on the prompt that appears asking if you want to allow the app to make changes to your device. 
5. At this point, if you are on a newer version of Windows 10 or Windows 11, the command from Step 2 should have installed, in addition to WSL, the latest LTS version of Ubuntu (22.04 LTS at time of writing) as the default distribution. If this is the case, an Ubuntu terminal will open to resume automatic setup, and afterwards will ask you set up a username and password. If this applies to you, skip to Step 9. Otherwise, continue with Step 5.
6. In the **Command Prompt**, type the following command to view a list of available WSL distros you can install and press Enter:

   ```powershell
   wsl --list --online
   ```

7. Type the following command to install a specific distro (Ubuntu-18.04 recommended) in WSL and press `Enter` (it will start the distro if it has already been installed):

   ```powershell
   wsl --install -d <DISTRO-NAME>
   ```
   
8. Restart your computer, open **Start (Win key)** and search for **Ubuntu**, and click on **Ubuntu \<VERSION-NUMBER\> on Windows (App)**. You should have the **WSL2 Ubuntu 18.04** terminal open. Now, you are ready to rock!
9. You will be prompted to `Enter new UNIX username` (this will create a local user account for the **Ubuntu WSL instance** and you will be automatically logged in to Ubuntu \<VERSION-NUMBER\> as this user). You can use any combination of alphanumeric characters for your username, but a good choice is `<first_initial><last_name>` (e.g., `jsmith` for John Smith), You will then be prompted to enter a new password (choose something easy to remember as you will find yourself using it frequently).

From this point on, whenever the instructions specify to **"open/type a command in a terminal"**, please assume you are supposed to open/type the command in the Ubuntu application (open **Start (Win key)** and search for **Ubuntu**, and click **Ubuntu \<VERSION-NUMBER\> on Windows (App)**).

References:
- https://learn.microsoft.com/en-us/windows/wsl/install
- https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-11-with-gui-support#2-install-wsl

### Bash shell (in the WSL2 Ubuntu)

You already have it, now that you’ve installed the WSL2!

### Git (in the WSL2 Ubuntu)

You already have it, now that you’ve installed the WSL2!

### VSCode (on your Windows)

1. Go to [this page](https://code.visualstudio.com/) and click the download button, then run the `.exe` file.
2. Leave all the defaults during the installation with the following exception:
   - Please make sure the box labelled "Register Code as an editor for supported file types" is selected

#### VSCode extensions

These extentions will allow you to work with the WSL2 Ubuntu with GUI.

1. Open Visual Studio Code, click on the **Extensions** icon in the left sidebar (or press `Ctrl+Shift+X`), and search for and install the `WSL` extension (usually, VSCode can automatically detect your WSL Ubuntu installation and remind you to install related extentions).
2. In a **terminal** (Ubuntu), type `code .` and press `Enter`. You should see a message reading "Installing VS Code Server" and then a new VSCode window (entitled: Get Started - \<USERNAME\> [WSL: Ubuntu \<VERSION-NUMBER\>] - Visual Studio Code) will open up. An indicator reading "WSL" should be visible in the bottom left corner of the window.
3. In the WSL VSCode window, open the Extensions panel (or `Ctrl+Shift+X`). In the search bar, search for each of the following extensions and click `Install` (or  `Install in WSL: Ubuntu`, depending on whether you have the extension installed locally) for the first entry that appears. If no `Install` button is available and the extension is not grayed out, it means it is already installed.
   - Python Extension Pack (n.b., you will need to reload VSCode after installing this)
   - Live Share
   - Docker
   - WSL

4. To confirm the extensions have been installed correctly, clear the Extensions search bar. You should now see an extensions category called "WSL: UBUNTU - INSTALLED" (you may also see one for "LOCAL - INSTALLED"). Verify that the extensions you have just installed exist in the list under "WSL: UBUNTU - INSTALLED". 

#### WSL2 Ubuntu terminal in VSCode
You can open a terminal in your WSL VSCode window (if you do not already have one at the bottom of the window) by navigating to **Terminal > New Terminal** in the top menu bar (or, ``` Ctrl+Shift+` ```). This terminal in a WSL VSCode window is equivalent to the WSL2 Ubuntu terminal we get from opening the Ubuntu app itself (i.e., like we did from the **Start (Win key)** menu), but with the advantage of having all the graphical features of VSCode at your disposal.

Reference: https://code.visualstudio.com/docs/remote/wsl
### Python (in the WSL2 Ubuntu)

We are going to install miniconda to manage the Python environment in our WSL2 Ubuntu using the **VSCode terminal** (alternatively, you can use the WSL Ubuntu terminal directly: open **Start (Win key)** and search for the **Ubuntu** app).

1. Type the following lines (separately) into the terminal and press `Enter` after each one:

   ``` bash
   wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
   bash Miniconda3-latest-Linux-x86_64.sh
   ```

2. A license agreement will be displayed and the bottom of the terminal will read `--More--`. Press `Enter` or the space bar until you are prompted with "Do you accept the license terms? [yes|no]." Type `yes` and then press `Enter`.
3. The installation script will inform you that it is going to install into a default directory (e.g., `/home/$USER/miniconda3`). Leave this default and press `Enter`.
4. When you are asked "Do you wish the installer to initialize Miniconda3 by running conda init? [yes|no]," type `yes` and press `Enter`. Close the terminal once the installation has finished.
5. Re-open the Ubuntu terminal. Type `which python` into the terminal and it should return a path (e.g., `/home/$USER/miniconda3/bin/python`).
   - If you do not see a path like this then please try ```cd miniconda3/bin/``` then `./conda init`, close (or re-open) your terminal, and repeat this step. If your issue is still not resolved skip the following step and contact an instructor on the #help-installation channel on the BHS Slack.
6. Type the following to remove the installation script that was downloaded:

   ``` bash
   rm ./Miniconda3-latest-Linux-x86_64.sh
   ```

#### Python packages

Open a terminal and type the following commands (press `Enter` after each):

``` bash
conda config --append channels conda-forge
conda config --set channel_priority strict
conda create -n qlsc612 -y python=3.9 flake8 ipython jupyter jupyterlab matplotlib nibabel nilearn numpy pandas scipy seaborn bokeh
conda activate qlsc612
```
This installation step (`conda create`) will take a couple minutes. The above commands create a new conda Python 3.9 environment named **qlsc612** with all the necessary packages installed for this course. The last line, `conda activate qlsc612`, will activate this Python environment (default env is `base`). Now you are ready to use VSCode to edit your Python script or Jupyter Notebook in your WSL2 Ubuntu distribution. 

#### Reminders: 

1. You may need to reactivate the `qlsc612` environment each time you start the WSL2 (e.g., in VSCode) with `conda activate qlsc612`.
2. When running a Jupyter notebook in VSCode (remote access to your WSL2 Ubuntu), you will also need to specify the Python environment (kernel). There will be a `Select Kernel` button in the top right corner of the Jupyter notebook, click it and select the one reading something like *qlsc612 (Python 3.9.x) miniconda3/envs/qlsc612/bin/python*. The button should be updated to read *qlsc612 (Python 3.9.x)*. This is the python environment we have just created for this course, make sure it is the one you are using for later modules.

### Docker Desktop for Windows 

You are supposed to install Docker Desktop after you have successfully installed WSL2.

1. Go to [this page](https://docs.docker.com/desktop/install/windows-install/) and click "Docker Desktop for Windows", then run the downloaded installer.
2. When prompted, ensure the "Use WSL 2 instead of Hyper-V option" on the Configuration page is selected or not depending on your choice of backend.
3. Follow the instructions on the installation wizard to authorize the installer and proceed with the install.
4. When the installation is successful, click "Close" to complete the installation process. (If your admin account is different to your user account, you must add the user to the docker-users group. Run **Computer Management** as an administrator and navigate to Local Users and Groups > Groups > docker-users. Right-click to add the user to the group. Log out and log back in for the changes to take effect.)
5. Whenever you need to run Docker, open **Start (Win key)**, search for **Docker Desktop** in your applications, and left click to run the app.
6. You can always use Docker command-line tools in **Command Prompt** or **PowerShell** (as well as from your WSL2 Ubuntu terminal).

The above step-by-step instructions are distilled from [here](https://docs.docker.com/desktop/install/windows-install/).

[back](./setup.html)
