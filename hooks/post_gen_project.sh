#! /bin/bash
set -e

# Make sure yarn is available
if [ -z "$(which yarn)" ];
then
  printf "Could not find yarn. Please install yarn using:\n\n"
  printf " > npm i -g yarn\n\n"
  exit 1
fi

printf "\n\n=======================\n"
printf "Installing dependencies...\n"
yarn install

printf "\n\n=======================\n"
printf "Compiling project...\n"
yarn compile

printf "\n\n=======================\n"
printf "Executing sanity tests\n"
yarn test

printf "\n\n=======================\n"
printf "Template initialization succesful\n"