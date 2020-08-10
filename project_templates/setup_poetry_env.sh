#!/bin/bash

main() {

  PROJECT_NAME=${1:-${PWD##*/}}

  printf "Creating pyproject.toml...\n"
  poetry_init $PROJECT_NAME
  printf "...pyproject.toml created.\nCreating virtual environment..."
  poetry install >> /dev/null
  printf "\nVirtual environment created!\n"

}

poetry_init() {
  yes "" | poetry init \
                      -n \
                      --name $PROJECT_NAME \
                      --dev-dependency jupyter \
                      --dev-dependency pandas \
                      --dev-dependency jupyter_contrib_nbextensions \
                      --dev-dependency autopep8 \
                      --dev-dependency gitpython >> /dev/null
}

main $1
