#!/bin/bash

main() {

  git init
  create_README
  create_gitignore
  create_poetry_env
  git status

}

create_README() {
  bash /Users/matthewquinn/helpers/project_templates/create_README.sh
}

create_gitignore() {
  bash /Users/matthewquinn/helpers/project_templates/create_gitignore.sh
}

create_poetry_env() {
  bash /Users/matthewquinn/helpers/project_templates/setup_poetry_env.sh
}

main
