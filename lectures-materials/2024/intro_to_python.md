---
layout: default
title: Introduction to Python
description: Introduction to Python
---

**Instructor:** [Michelle Wang](https://github.com/michellewang)

## Outline

This lecture is designed to get students up and running with Python.
It is expected that Python 3 (preferably 3.8 or later) is installed,
and that the students have some basic previous experience in a scripting language.

It will guide students through the fundamental syntax, concepts,
and data structures required to code in Python 3.

Topics include:

-   running your code,
-   commenting,
-   variables,
-   arithmetic,
-   logic,
-   strings, lists, tuples, dictionaries,
-   functions,
-   libraries,
-   if statements,
-   loops,
-   exceptions,
-   and classes.

## Questions you will be able to answer after taking this module

-   How does the use of a `break` statement alter the flow of a loop in Python?
-   What happens if you attempt to append new elements to a Tuple?
-   Without running the code on your machine, what is the printed output when the following code is run?

    ```python
    my_dictionary = {"a" : 1, "b" : {"c" : {"d" : [4,5,6,4]}}, "c" : [1,2,3]}
    x = my_dictionary["b"]["c"]["d"].append(my_dictionary["c"][-3])
    print(my_dictionary.values())
    ```

    1.  `[1, {'c': {'d': [4, 5, 6, 4]}}, [1, 2, 3]]`
    2.  `[1, {'c': {'d': [4, 5, 6, 4, 1]}}, [1, 2, 3]]`
    3.  `[1, [4,5,6,4,1], [1,2,3]]`
    4.  `[1, [4,5,6,4], [1,2,3]]`

-   Without running the code on your machine, which string is returned by
    `my_function` when called with the specified parameters?

    ```python
    def my_function(x, y, z):
        result = ""
        if len(z) <= 6 and len(z) > 2:
            result = z[-2] + y
        else:
            result = x + y
        return x + x + result

    my_function("111", "abc", "0100")
    ```

  1.  `1111110abc`
  1.  `0abc111111`
  1.  `111111bca0`
  1.  `1111111110`

## Material

-   [code](https://github.com/neurodatascience/QLS-course-materials/tree/main/Lectures/2024/04_intro_to_python)
-   [slides](https://github.com/neurodatascience/QLS-course-materials/tree/main/Lectures/2024/04_intro_to_python/lecture)

## Resources

-   [Think Python 2e textbook](https://greenteapress.com/wp/think-python-2e/)

## Pre-recorded lecture video

From the 2021 course.

<div style="display: flex; justify-content: center; margin: 10px">

  <iframe
    width="560"
    height="315"
    src="https://www.youtube.com/embed/ml6VkmtLXpA?si=ZLLN7jP6om9qMVXL"
    title="YouTube video player"
    frameborder="0"
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin"
    allowfullscreen>
  </iframe>

</div>

---

[back](../latest.html)
