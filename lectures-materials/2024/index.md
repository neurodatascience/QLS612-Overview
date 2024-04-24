---
layout: default
title: 2023 Lectures and Class Material
description: Links to the pre-recorded lectures and material
---




## 6. Data Wrangling with Pandas

**Instructor:** Jacob Sanz-Robinson

This module is designed to introduce students to the Pandas Python library for
manipulating data in tables and time series (not to be confused with the
[bear of the same name](https://mcdn.wallpapersafari.com/medium/8/55/Wv7BhD.jpg)).
It aims to build a basic understanding of what happens underneath the hood in
Pandas, and arm you with the essential practical knowledge to fearlessly tackle
the next CSV file you encounter in the wild.

**Outline**

1. Introduction

- a) What is Pandas?
- b) (Very) Brief History
- c) Why should I care about Pandas?
- d) Features & Docs

2. Pandas Objects

- a) The Series Object
- b) The DataFrame Object
- c) The Index Object

3. Pandas Wrangler Essentials

- a) Data I/O
- b) Selection and Indexer
- c) Filtering
- d) Combining DataFrames
- e) Inbuilt Aggregations

**Materials**:
[GitHub Link](https://github.com/neurodatascience/QLS-course-materials/tree/main/Lectures/2023/06-Data_Wrangling_with_Pandas)

**Pre-recorded lecture video:** [YouTube link](https://youtu.be/S8bYQ7YmrOQ)

**Lecture resources**

- [Python Data Science Handbook](https://jakevdp.github.io/PythonDataScienceHandbook/index.html)
- [Neurohackademy lecture on Pandas](https://neurohackademy.org/course/complex-data-structures/)

**Questions you will be able to answer after taking this module:**

1. Which of the following is an immutable Pandas Object?

- a) Index
- b) DataFrame
- c) Series
- d) Array

2. What function would you use to combine two Pandas DataFrames if you wanted to
   align their rows based on common column values?

- a) Append
- b) Concat
- c) Merge
- d) Map

---

## 7. Classical statistics pitfalls and remedies

**Instructor:** [JB Poline](mailto:jean-baptiste.poline@mcgill.ca)

**Outline**

Most of published results still rely on some statistical inference. With this
lecture, you will

- get a reminder of the classical statistical framework and learn about the
  issues brought by the use of statistical inference
- learn (or be reminded of) the notion of effect size, power, positive
  predictive values and the consequences of low powered studies
- understand the file drawer effect, p-hacking, and know about some solutions.

**Materials:**
[GitHub Link](https://github.com/neurodatascience/QLS-course-materials/tree/main/Lectures/2023/07-Statistics)

**Pre-recorded lecture video:** [YouTube Link](https://youtu.be/lRLtWjkBOzQ)

**Slides:**
[Slides](https://github.com/neurodatascience/QLS-course-materials/tree/main/Lectures/2023/07-Statistics/10-classical-statistics-issues.pdf)

**Lecture Resources**

- [Think Stats](https://greenteapress.com/thinkstats2/thinkstats2.pdf)

**Questions you will be able to answer after taking this module:**

Coming soon! <!-- TODO -->

---

## 8. Introduction to Machine Learning part 1: supervised learning

**Instructor:** Nikhil Bhagwat

**Outline**

- Define machine-learning nomenclature
- Describe basics of the “learning” process
- Explain model design choices and performance trade-offs
- Introduce model selection and validation frameworks
- Explain model performance metrics

**Materials:**
[GitHub Link](https://github.com/neurodatascience/QLS-course-materials/tree/main/Lectures/2023/08-Machine_Learning_1)

**Pre-recorded lecture video:**
[YouTube Link](https://www.youtube.com/watch?v=vsp7c-f3cvg)

**Slides:**
[Slides](https://docs.google.com/presentation/d/1rxR237_F95cfQsA7ZPicQa2w-r-LVOdGwm1xpgosE8o/edit?usp=sharing)

**Lecture Resources**

- [Linear Algebra Review and Reference](https://www.cs.mcgill.ca/~dprecup/courses/ML/Materials/linalg-review.pdf)
- [Review of Probability Theory](https://www.cs.mcgill.ca/~dprecup/courses/ML/Materials/prob-review.pdf)

**_IMPORTANT!_** To fully understand the material taught in this module, you
should make sure that you are already familiar with the following concepts
(please take some time to review them if needed):

- Basics of linear algebra (check out
  [these videos](https://youtu.be/fNk_zzaMoSs) if you need a refresher)
  - Do you know how to use vectors?
  - Do you know how to multiply two matrices?
- Basics of linear regression
  - Do you know what a mean-square error is?
  - How to fit linear regression or GLMs?

**Questions you will be able to answer after taking this module:**

- When is ML a useful approach?
- Supervised learning
  - Model training - what is under/over-fitting?
  - Model selection - what is (nested) cross-validation?
  - Model evaluation - what are type-1 and type-2 errors?
- What NOT to do when using ML models in your research

**Things you will NOT learn in this module (if you are an advanced ML student)**

- In-depth review of unsupervised learning approaches (e.g. clustering)
- How train deep-learning models
- How to use and/or defeat chatGPT

---

## 9. Introduction to Machine Learning part 2: Model selection & validation; dimensionality reduction

**Instructor:** Jérôme Dockès

**Outline**

In this module, you will:

- Learn how to properly select a machine-learning model, set hyperparameters,
  and evaluate prediction performance.
- Understand the challenges of learning from high-dimensional data and learn
  about tools to mitigate the issue.

**Materials:**
[GitHub Link](https://github.com/neurodatascience/QLS-course-materials/tree/main/Lectures/2023/09-Machine_Learning_2)

**Pre-recorded lecture video:**
[YouTube Link](https://www.youtube.com/watch?v=t8D9qwTqEbc)

**Slides:**
[Link](https://github.com/neurodatascience/QLS-course-materials/tree/main/Lectures/2023/09-Machine_Learning_2/lecture-content/09-Machine_Learning_2.pdf)

**Lecture Resources**

- [Scikit-learn guide on feature selection](https://scikit-learn.org/stable/modules/feature_selection.html)
- [Scikit-learn guide on cross-validation](https://scikit-learn.org/stable/modules/cross_validation.html)
- [Scikit-learn guide on model evaluation](https://scikit-learn.org/stable/modules/model_evaluation.html)

**Questions you will be able to answer after taking this module:**

- I am predicting continuous cognitive scores of 1,000 participants using 20,000
  brain imaging features. I use least-squares regression. What is regularization
  and why do I need it?
- I decide to use ridge regression (l2 regularization). How can I set the
  regularization hyperparameter?
- I also add a dimensionality reduction step to my model: PCA. I do 5-fold
  cross-validation, and I perform a full grid-search, using 3 folds for the
  inner validation loop. I use a grid of 3 options for the number of PCA
  components and 6 options for the ridge hyperparameter. How many times (at
  least) will I need to fit a PCA?

## 10. Introduction to Data Visualization in Python

**Instructor:** Kendra Oudyk

**Outline**

<!-- TODO ask Kendra to update text/links (if needed) -->

- Data visualization is an essential skill for scientists.
- At the grad student level, you're probably already familiar with basic plots
  (e.g., bar plot vs pie chart), as well as types of data (e.g, ordered vs
  categorical).
- With that in mind, I hope to take you a bit deeper into the technicalities of
  planning and executing and effictive Figure.

**Materials:**
[GitHub Link](https://github.com/neurodatascience/QLS-course-materials/tree/main/Lectures/2023/10-Intro_to_Data_Visualization)

**Pre-recorded lecture video, Part 1 Decoding:**
[YouTube link](https://youtu.be/dqf5gmY7vE0)\
**Pre-recorded lecture video, Part 2 Encoding:** [YouTube link](https://youtu.be/DrOICNoOfEA)

**Slides for Part 1 Decoding:**
[Slides](https://github.com/neurodatascience/QLS-course-materials/tree/main/Lectures/2023/10-Intro_to_Data_Visualization/lecture_slides__data_vis_pt1_decoding.pdf)\
**Slides for Part 2 Encoding:** [Slides](https://github.com/neurodatascience/QLS-course-materials/tree/main/Lectures/2023/10-Intro_to_Data_Visualization/lecture_slides__data_vis_pt2_encoding.pdf)

---

## 11. Virtualization of computing environments

**Instructor:** Sebastian Urchs

**Outline**

- Learn why containerization and virtualization are important for research
  projects.
- Have an overview of different solutions to create isolated environments.
- Get some basic hands on experience with and Docker.

**Materials:**
[GitHub Link](https://github.com/neurodatascience/QLS-course-materials/tree/main/Lectures/2023/11-Containers)

**Pre-recorded lecture video:**
[YouTube Link](https://www.youtube.com/watch?v=KolUIDOynls)

**Slides:**
[Slides](https://github.com/neurodatascience/QLS-course-materials/tree/main/Lectures/2023/11-Containers/11_Containerization_Slides.pdf)

<!-- **Lecture Resources** TODO -->

**Questions you will be able to answer after taking this module:**

- When working with the file system inside a Docker container, which statements
  are true?
  - I cannot see files on the host system from inside the container
  - files written into the container file system are lost with the container
  - I can mount paths on the host system into the container to expose their
    contents to it
- What is an advantage of Docker over a Virtual Machine?
  - a Docker container can run any operating system, independently of the host
    operating system
  - Docker is a good choice for shared systems because of its high level of
    security
  - Docker containers are easier to specify, build, and manage and have better
    sharing infrastructure
- What is the difference between a Docker container and a Docker image?
  - A Docker container is a registry service to store and share Docker images
  - A Docker image is a read-only snapshot and a Docker container is a running
    instance of it
  - A Docker container is a read-only snapshot that can be easily shared (e.g.
    on Dockerhub) and from it, many live Docker images can be spawned
- What is an advantage conda has over pip for Python environments?
  - conda is usually prepackaged with Python, so you don't have to install
    anything
  - conda has more Python packages than pip because of the Anaconda distribution
  - conda can resolve non-Python dependencies and can also create virtual
    environments