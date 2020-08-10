# Notebook Template
A Jupyter Notebook template with markdown sections, default imports, and a user-prompt to rename the notebook.

## Prerequisites
- [Jupyter](https://jupyter.org/install)
- [jupyter_contrib_nbextensions](https://jupyter-contrib-nbextensions.readthedocs.io/en/latest/install.html)

## Getting Started
1. `git clone https://github.com/quinnmanor/helpers.git`
2. `cd helpers`
3. `cp -R notebook_template/ /path/to/jupyter_contrib_nbextensions/nbextensions/notebook_template`
4. `jupyter contrib nbextensions install`
5. `jupyter notebook`
6. When your jupyter server starts, navigate to `Nbextensions`.
7. Enable the extension titled: `Notebook Template`
8. Create a new Notebook!

## Project Organization
------------
    ├── README.md  <- The top-level README for developers using this project.
    │
    ├── main.js  <- File containing instructions for the notebook template (change this to change the template).
    │
    ├── setup.yaml  <- Instructions for Nbextensions.
--------
Based on template created by [Will Koehrsen](https://github.com/WillKoehrsen)