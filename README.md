# Bumbailiff

Keep your technical debt under control.

Check out our [blog post](https://cucumber.io/blog/bdd/todo-or-not-todo/) to learn more about the concept behind this tool. Bumbailiff works on any git repository.

## Installation

There are several ways of installing and running bumbailiff.

### Manual download

Download and decompress the archive of this repository in the directory of your choice:

    curl -Os https://raw.githubusercontent.com/mattwynne/bumbailiff/main/src/bumbailiff

### Node.js / NPM

If you have [Node.js](https://nodejs.org/en/) and [NPM](https://docs.npmjs.com/about-npm) installed, you can use [`npx`](https://docs.npmjs.com/cli/v7/commands/npx) to execute bumbailiff:

    npx bumbailiff

You can add bumbailiff to your Node.js project:

    npm install --save-dev bumbailiff

Or alternatively:

    yarn add --dev bumbailiff

## Usage

    bumbailiff 10

This will check that you git repository does not contain more than 10 days of accumulated TODO-days. To do so, bumbailiff will query your git repository and search for all the TODOs it can find, compute the age of each one and print out the sum.

The maximum debt age is optional and defaults to 14.

## Set up on your project

After installing bumbailiff, you might want to set up a pre-push hook in your repository to prevent pushing if the tech debt limit has been reached:

    echo "#\!/usr/bin/env bash\nbumbailiff" >> .git/hooks/pre-push && chmod +x .git/hooks/pre-push

## Other development practice tools

At Cucumber and Smartbear, we also use other tools that make our software development practices as a (remote) mob more healthy:

- [Architecture Decision Records tools](https://github.com/npryce/adr-tools): keep track of the decisions your team makes;
- [Retro tools](https://github.com/tooky/retro-tools): log your team retrospective outcomes.

## Credits

This project is based off the [original work](https://gist.github.com/aslakhellesoy/de419d6ded6249e8a68c05d296314bf2) of [Aslak Hellesøy](https://github.com/aslakhellesoy). Some of the bash work around bumbailiff was also inspired by [Steve Tooke](https://github.com/tooky/)'s [retro-tools](https://github.com/tooky/retro-tools) who was himself inspired by [Nat Pryce](https://github.com/npryce)'s work.
