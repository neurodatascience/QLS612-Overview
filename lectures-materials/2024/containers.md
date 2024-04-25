---
layout: default
title: 🐋 Containers 🐋
description: 🐋
---

**Instructor:** [ Sebastian Urchs](link)

## Outline

- Learn why containerization and virtualization are important for research projects.
- Have an overview of different solutions to create isolated environments.
- Get some basic hands on experience with and Docker.

## Questions you will be able to answer after taking this module

- When working with the file system inside a Docker container, which statements are true?
  - I cannot see files on the host system from inside the container
  - files written into the container file system are lost with the container
  - I can mount paths on the host system into the container to expose their contents to it
- What is an advantage of Docker over a Virtual Machine?
  - a Docker container can run any operating system, independently of the host operating system
  - Docker is a good choice for shared systems because of its high level of security
  - Docker containers are easier to specify, build, and manage and have better sharing infrastructure
- What is the difference between a Docker container and a Docker image?

  - A Docker container is a registry service to store and share Docker images

  - A Docker image is a read-only snapshot and a Docker container is a running instance of it

  - A Docker container is a read-only snapshot that can be easily shared
    (e.g. on Dockerhub) and from it, many live Docker images can be spawned

- What is an advantage conda has over pip for Python environments?
  - conda is usually prepackaged with Python, so you don't have to install anything
  - conda has more Python packages than pip because of the Anaconda distribution
  - conda can resolve non-Python dependencies and can also create virtual environments

## Material

- [code](https://github.com/neurodatascience/QLS-course-materials/tree/main/Lectures/2024/11_containers)
- [slides](https://github.com/neurodatascience/QLS-course-materials/tree/main/Lectures/2024/11_containers/lecture)

## Resources

## Pre-recorded lecture video

[YouTube Link](https://www.youtube.com/watch?v=KolUIDOynls)

<div style="display: flex; justify-content: center; margin: 10px">

  <iframe
    width="560"
    height="315"
    src="https://www.youtube.com/embed/KolUIDOynls?si=Yf5eFi3OQo243fw-"
    title="YouTube video player"
    frameborder="0"
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin"
    allowfullscreen>
  </iframe>

</div>

## Extras

<div style="display: flex; flex-direction: column; justify-content: center; align-items: center; margin: 10px">
  <a href="https://xkcd.com/1988/">
    <img src="https://imgs.xkcd.com/comics/containers.png" alt="xkcd-containers">
  </a>
  <a href="https://www.explainxkcd.com/wiki/index.php/1988">explanation</a>
</div>

---



<a href="{{ site.url }}/lectures-materials/latest.html"><button>BACK</button></a>
