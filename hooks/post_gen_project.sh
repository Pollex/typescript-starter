#! /bin/bash
set -e

# Make sure yarn is available
if [ -z "$(which yarn)" ];
then
  printf "Could not find yarn. Please install yarn using:\n\n"
  printf " > npm i -g yarn\n\n"
  exit 1
fi

if [ -z "$(which docker)" ];
then
  printf "Could not find docker. Please install docker, see:\n\n"
  printf " https://docker.com/ \n\n"
  exit 1
fi

printf "\n\n=======================\n"
printf "Building docker development image\n"
yarn build:image

printf "\n\n=======================\n"
printf "Installing local node dependencies...\n"
yarn docker install

printf "\n\n=======================\n"
printf "Compiling project...\n"
yarn compile

printf "\n\n=======================\n"
printf "Executing sanity tests\n"
yarn test

printf "\n\n=======================\n"
printf "Template initialization succesful\n"