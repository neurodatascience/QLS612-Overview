---
layout: default
title: "Introduction to Machine Learning: part 2"
description: 🤖🤖 Model validation & Unsupervised learning 📖📖
---

**Instructor:** [Michelle Wang](https://github.com/michellewang) & [Mohammad Torabi](https://github.com/mtorabi59)

## Outline

In this module, you will:

-   Learn how to properly select a machine-learning model, set hyperparameters, and evaluate prediction performance.
-   Understand the challenges of learning from high-dimensional data and learn  about tools to mitigate the issue.

## Questions you will be able to answer after taking this module

-   I am predicting continuous cognitive scores of 1,000 participants using 20,000 brain imaging features.
    I use least-squares regression.
    What is regularization and why do I need it?

-   I decide to use ridge regression (l2 regularization).
    How can I set the regularization hyperparameter?

-   I also add a dimensionality reduction step to my model: PCA.
    I do 5-fold cross-validation, and I perform a full grid-search,
    using 3 folds for the inner validation loop.
    I use a grid of 3 options for the number of PCA components
    and 6 options for the ridge hyperparameter.
    How many times (at least) will I need to fit a PCA?

## Material

-   [code]()
-   [slides]()

## Resources

-   [Scikit-learn guide on feature selection](https://scikit-learn.org/stable/modules/feature_selection.html)
-   [Scikit-learn guide on cross-validation](https://scikit-learn.org/stable/modules/cross_validation.html)
-   [Scikit-learn guide on model evaluation](https://scikit-learn.org/stable/modules/model_evaluation.html)

---

<a href="{{ site.url }}/lectures-materials/latest.html"><button>BACK</button></a>
