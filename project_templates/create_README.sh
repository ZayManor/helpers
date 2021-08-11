#!/bin/bash

main() {

  create_README_MD
  write_to_README

}

create_README_MD() {
  touch README.md
}

write_to_README() {
printf "# My Project Name
Short description of the project.

## Live Project
To view our application, click the link below:

https://link-to-hosted-app.com/

## Running the App Locally

The following sections will show you how to run the application locally.

### Prerequisites
- tech_1: ^0.0
- tech_2: ^0.0
- tech_3: ^0.0

### Getting Started
1. git clone https://github.com/github-user/project-name.git
2. cd project-name
3. python app.py

### Running our test suite
1. python test-app.py

## Project Organization
------------

    ├── README.md  <- The top-level README for developers using this project.
    │
    ├── .gitignore  <- Specifies which files to ignore within the repository.
    │
    ├── create_README.sh  <- Creates a README for users.
    │
    ├── create_gitignore.sh  <- Creates a .gitignore for users.
    │
    ├── setup_local_github_env.sh  <- Simple github setup for users.

--------" > README.md
}

main