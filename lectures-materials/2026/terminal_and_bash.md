---
layout: default
title: 🐧 Introduction to the Terminal and Bash 🐧
description: 🐧
---

**Instructor:** [Alyssa Dai](https://github.com/alyssadai)

## Outline

To follow most of the other modules, you will need some basic understanding of the command line.
In this module, we'll learn about the command line using the Bourne Again SHell (Bash),
the default shell in most Linux systems.

You will learn how to use the command line to:

- move around on your computer and work with directories (folders) and files
- find things (files, directories, file contents, etc.)
- run useful command-line programs and find help (`find`, `grep`, `ls`, and `man`/documentation)
- work with variables (e.g., `$PATH`) and basic shell scripts

## Questions you will be able to answer after taking this module

- What is a command-line shell?

- Among thousands of files in a folder, how would you copy just the ones with names starting with
  `"DATASET_subject..."` to a different directory on your computer?

- Among thousands of files and directories you know know there is a file where the file contents
  include the phrase `"Backup of my Thesis"`.
  How would you find this file?

- What is an environment variable, and how can you change it?

## Material

<object data="{{ site.url }}/assets/material/02_terminal-bash_BMcP_2026.pdf " width="1000" height="1000" type='application/pdf'>
</object>

<!--[Exercises](https://github.com/neurodatascience/QLS-course-materials/blob/main/Lectures/2026/02_terminal-bash/introduction-to-bash-in-class-exercises.ipynb) -->

## Extra resources

<!-- {% include xkcd.html xkcd_nb="149" img="sandwich" %} -->

-   [Bash cheatsheet](https://devhints.io/bash)
-   [explainshell](https://explainshell.com/): see the help text for each argument in a given shell command
-   [other resources for learning Bash](https://learn-neuroimaging.github.io/hitchhackers_guide_brain/11-programming/#shell-programming)

### How to make your terminal "prettier"

If you feel you do not want to spend time working in the terminal because "it looks ugly,"
you can install some tools that will help you personalize your terminal!

Examples:
<!-- {
An example of how to edit the preferences for a Mac terminal to change its look and feel:
{% include youtube.html youtube_id ="xyCtdGqdQ5U?si=H1L8ZdUZVZFCEabc" %}
} -->

- [starship](https://starship.rs/) works with most shells and operating systems
  and offers plenty of options in terms of looks and prompt configuration.

- [oh-my-zsh](https://ohmyz.sh/) is designed for `zsh` (default shell on most Macs),
  and offers many [themes](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes) for your prompt
  but also many [plugins](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins-Overview) with many aliases to help you be more productive.

  - [oh-my-bash](https://ohmybash.nntoan.com/) is the equivalent for `bash`.

- [oh-my-posh](https://ohmyposh.dev/) works with most shells and operating systems
  and offers a [wide range of themes for your prompt](https://ohmyposh.dev/docs/themes).

---

<a href="{{ site.url }}/lectures-materials/latest.html"><button>BACK</button></a>
