---
layout: default
title: Introduction to the Terminal and Bash
description: Introduction to the Terminal and Bash
---

**Instructor:** [Brent McPherson](https://github.com/bcmcpher), [Alyssa Dai](https://github.com/alyssadai)

## Outline

To follow most of the other modules, you will have to have some basic understanding of the command line.
In this module we'll take a look at the the BourneAgainSHell (BASH),
the default command line in most Linux systems.

You will learn how to:

-   move around on your computer with the command line, create and open directories and files
-   find things with the command line (files and programs, PATH variables)
-   run useful command line programs and find help (`find`, `grep`, `ls`, and `man` / documentation)

## Questions you will be able to answer after taking this module

-   What is a command line shell?

-   How would you copy thousands of files with file names starting with `"my_good_file..."`
    to a different directory on your computer?

-   Among thousands of files and directories you know there is one
    where you wrote down `"location of my thesis backup"`. How do you find this file?

-   What is an environment variable, and how can you change it?

## Material

-   [code](https://github.com/neurodatascience/QLS-course-materials/tree/main/Lectures/2024/02_terminal_and_bash)
-   [slides](https://github.com/neurodatascience/QLS-course-materials/tree/main/Lectures/2024/02_terminal_and_bash/lecture)

## Pre-recorded lecture video

{% include youtube.html youtube_id ="Sd10Wo5LQls?si=PE9HfQqy77dd3Ouh" %}

## Extras

{% include xkcd.html xkcd_nb="149" img="sandwich" %}

-   [bash cheatsheet](https://devhints.io/bash)
-   [explainshell](https://explainshell.com/): write down a command-line to see the help text that matches each argument
-   [list of resources for learning bash](https://learn-neuroimaging.github.io/hitchhackers_guide_brain/11-programming/#shell-programming)

### "Easy" way to make your terminal "prettier"

If you feel you do not want to spend time working in the terminal because "it looks ugly",
(the Mac's terminal being one the worst offenders), here are a few tips.

-   check how to change the look and feel of it by editing the preferences

    See for example for Macs terminal's below.

{% include youtube.html youtube_id ="xyCtdGqdQ5U?si=H1L8ZdUZVZFCEabc" %}

More "advanced" solutions usually include installing tools
that will help you personalize your terminal experience.

-   [starship](https://starship.rs/) will work with most shells and operating systems
    and offers plenty of options in terms of looks and prompt configuration.

-   [oh-my-zsh](https://ohmyz.sh/) specializes with the zsh (the default shell on most Mac),
    and offers many [themes](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes) for your prompt
    but also many [plugins](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins-Overview) with many aliases to help you be more productive.

-   [oh-my-posh](https://ohmyposh.dev/) will work with most shells and operating systems
    and offers a [wide range of themes for your prompt](https://ohmyposh.dev/docs/themes).

---

<a href="{{ site.url }}/lectures-materials/latest.html"><button>BACK</button></a>
