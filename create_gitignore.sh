#!/bin/bash

main() {

  create_gitignore
  write_to_gitignore

}

create_gitignore() {
  touch .gitignore
}

write_to_gitignore() {
printf "__pycache__/
.vscode/" >> .gitignore
}

main