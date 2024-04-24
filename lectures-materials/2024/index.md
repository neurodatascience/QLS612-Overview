---
layout: default
title: 2023 Lectures and Class Material
description: Links to the pre-recorded lectures and material
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
