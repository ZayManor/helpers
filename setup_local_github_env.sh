#!/bin/bash

main() {

  git init
  create_README
  create_gitignore
  git status

}

create_README() {
  bash /Users/matthewquinn/helpers/create_README.sh
}

create_gitignore() {
  bash /Users/matthewquinn/helpers/create_gitignore.sh
}

main