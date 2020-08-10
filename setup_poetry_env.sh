#!/bin/bash

main() {

  PROJECT_NAME=${1:-${PWD##*/}}

  echo 'Creating poetry virtual environment...'
  poetry_init $PROJECT_NAME
  echo 'Virtual environment created!'

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