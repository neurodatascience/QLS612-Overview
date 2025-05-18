---
layout: default
title: 🐍 Introduction to Python 🐍
description: 🐍
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
    1.  `[1, {'c': {'d': [4, 5, 6, 4, 1]}}, [1, 2, 3]]`
    1.  `[1, [4,5,6,4,1], [1,2,3]]`
    1.  `[1, [4,5,6,4], [1,2,3]]`

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

<object data="{{ site.url }}/assets/material/04_intro-python_MW_2025.pdf " width="1000" height="1000" type='application/pdf'>
</object>

## Resources

- [Beginner's Python Cheat Sheet](https://github.com/neurodatascience/QLS-course-materials/blob/main/Lectures/2025/04_intro-python/beginners_python_cheat_sheet_pcc_all.pdf)
-   [Think Python 2e textbook](https://greenteapress.com/wp/think-python-2e/)
-   [conda cheatsheet](https://docs.conda.io/projects/conda/en/latest/user-guide/cheatsheet.html)

## Extras

{% include xkcd.html xkcd_nb="1987" img="python_environment" %}

-   [List of resources to learn Python](https://learn-neuroimaging.github.io/hitchhackers_guide_brain/11-programming/#python)

-   [Glossary of common python terms](https://www.pythonmorsels.com/terms/)

-   [The good research handbook](https://goodresearch.dev/index.html) is for grad students,
    postdocs and PIs who do a lot of programming as part of their research.
    It will teach you, in a practical manner, how to organize your code so that it is easy to understand and works reliably.

-   [Sourcery.ai for live code reviews to improve your Python code](https://sourcery.ai/)

-   [A very brief intro to Python for MATLAB users](https://volttron.readthedocs.io/en/main/developing-volttron/python-for-matlab-users.html)

-   [An unbiased evaluation of Python environment management and packaging tools](https://alpopkes.com/posts/python/packaging_tools/)

<div style="display: flex; flex-direction: column; justify-content: center; align-items: center; margin: 10px">
  <div style="width: 80%">
    <a href="https://alpopkes.com/posts/python/packaging_tools/">
      <img src="https://alpopkes.com/posts/python/figures/venn_diagram.png"
           alt="python_environment">
    </a>
  </div>
</div>

### Podcasts

-   [Python bytes](https://pythonbytes.fm/) for quick regular updates in what's new in the world of Python
-   [Talk Python to me](https://talkpython.fm/)
-   Real Python with many [courses](https://realpython.com/) and a [podcast](https://realpython.com/podcasts/rpp/)

---

<a href="{{ site.url }}/lectures-materials/latest.html"><button>BACK</button></a>
