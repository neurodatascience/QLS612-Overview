---
layout: default
title: 🐋 Containers 🐋
description: 🐋
---

**Instructor:** [Alyssa Dai]()

## Outline

-   Learn why containerization and virtualization are important for research projects.
-   Have an overview of different solutions to create isolated environments.
-   Get some basic hands on experience with and Docker.

## Questions you will be able to answer after taking this module

-   When working with the file system inside a Docker container, which statements are true?

    -   I cannot see files on the host system from inside the container
    -   files written into the container file system are lost with the container
    -   I can mount paths on the host system into the container to expose their contents to it

-   What is an advantage of Docker over a Virtual Machine?

    -   a Docker container can run any operating system, independently of the host operating system
    -   Docker is a good choice for shared systems because of its high level of security
    -   Docker containers are easier to specify, build, and manage and have better sharing infrastructure

-   What is the difference between a Docker container and a Docker image?

    -   A Docker container is a registry service to store and share Docker images

    -   A Docker image is a read-only snapshot and a Docker container is a running instance of it

    -   A Docker container is a read-only snapshot that can be easily shared
        (e.g. on Dockerhub) and from it, many live Docker images can be spawned

-   What is an advantage conda has over pip for Python environments?

    -   conda is usually prepackaged with Python, so you don't have to install anything
    -   conda has more Python packages than pip because of the Anaconda distribution
    -   conda can resolve non-Python dependencies and can also create virtual environments

## Material

-   [code]()
-   [slides]()

## Resources

## Extras

{% include xkcd.html xkcd_nb="1988" img="containers" %}

---



<a href="{{ site.url }}/lectures-materials/latest.html"><button>BACK</button></a>
