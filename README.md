# Frontend Development Environment Helpers

This repo contains opinionated recommendations and suggestions
as to the tools that many frontend developers (especially beginners)
will find useful.

Beginners may also find [`dev-env-git`](https://github.com/OleksiyRudenko/dev-env-git)
recommendations useful.

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
## Table of Contents

- [Intro](#intro)
- [Must have](#must-have)
- [Almost must have](#almost-must-have)
  - [Windows](#windows)
  - [MacOS](#macos)
  - [Unix/Linux](#unixlinux)
- [Extras](#extras)
  - [`doctoc`](#doctoc)
  - [`push-dir`](#push-dir)
- [Issues?](#issues)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->
<!-- generated with [DocToc](https://github.com/thlorenz/doctoc) -->

## Intro

All scripts are optional. It is recommended that you look
into the script of your choice before using it.

Some tools/scripts are specific to Windows OS (as denoted).
Under Windows scripts are intended to get launched under
e.g. Git Bash that comes bundled with git distribution.
Under Windows it is accessible from file explorer context menu.

Scripts may require you to fix filepath, credentials, etc
(as denoted).

Some scripts will require administrative privileges
and need to be set as executable (just run `chmod u=rwx *.sh`
is this project folder).
Remember to precede script with explicit path when launching them,
e.g. `./script.sh`

If you are at the very beginning of the profession you may
also find [`dev-env-git`](https://github.com/OleksiyRudenko/dev-env-git)
project useful to make your life easier.

## Must have

Decide which NodeJS version manager you want to use.
You will definitely need one as various projects you will work with
will require different NodeJS version.

Latest recommendation (as of this doc update) is to use [fnm](https://github.com/Schniz/fnm).
Although setting up `fnm` may require quite an effort.
When you are ready to give up, go for `nvm`.

Install the following
 * **Node Version Manager** for either
   * `nvm`:
     [Windows](https://github.com/coreybutler/nvm-windows#overview)
     or [Linux/Mac](https://github.com/nvm-sh/nvm#installing-and-updating) and run `./bash-nvm.sh`
   * `fnm`: https://github.com/Schniz/fnm?tab=readme-ov-file#installation
     and run `./bash-fnm.sh`
 * [node.js+npm](https://nodejs.org/en/download/)
   using `fnm` or `nvm`,
 * Optional: [yarn](https://yarnpkg.com/en/docs/install) or
   [pnpm](https://pnpm.js.org/docs/en/installation.html);

> **Worth reading:** [`npm` vs `yarn` vs `pnpm`](https://www.alexkras.com/understanding-differences-between-npm-yarn-and-pnpm/);

> **A note re `pnpm`:** Under Windows `pnpm` may require that packages
> repository and projects are located on the same hard drive
> (`pnpm` uses hard links, and Windows poses certain restrictions;
> please, google for details or trust the above)

## Almost must have

Some frontend tools may require building and under Windows you may
require extra tools for this. The most popular add-ons that will
require building from source are:
[node-sass](https://www.npmjs.com/package/node-sass),
[bcrypt](https://www.npmjs.com/package/bcrypt),
[sqlite3](https://www.npmjs.com/package/sqlite3),
[serialport](https://www.npmjs.com/package/serialport),
[websocket](https://www.npmjs.com/package/websocket),
[deasync](https://www.npmjs.com/package/deasync),
[grpc](https://www.npmjs.com/package/grpc),
[canvas](https://www.npmjs.com/package/canvas),
[sharp](https://www.npmjs.com/package/sharp),
[hiredis](https://www.npmjs.com/package/hiredis),
[leveldown](https://www.npmjs.com/package/leveldown),
[nodegit](https://www.npmjs.com/package/nodegit),
[zqm](https://www.npmjs.com/package/zqm),
[ffi](https://www.npmjs.com/package/ffi),
[libxmljs](https://www.npmjs.com/package/libxmljs),
[iconv](https://www.npmjs.com/package/iconv),
[ref](https://www.npmjs.com/package/ref),
[sleep](https://www.npmjs.com/package/sleep),
[microtime](https://www.npmjs.com/package/microtime),
[couchbase](https://www.npmjs.com/package/couchbase),
[bignum](https://www.npmjs.com/package/bignum),
[kerberos](https://www.npmjs.com/package/kerberos), and
[ursa](https://www.npmjs.com/package/ursa).
The list is taken from
[`windows-build-tools`](https://github.com/felixrieseberg/windows-build-tools/blob/master/README.md)
project.

Install [`python 2.7`](https://www.python.org/download/releases/2.7/)

Install OS speific toolchain as per sections below.

Consult [`node-gyp`](https://github.com/nodejs/node-gyp#on-windows)
and/or [`windows-build-tools`](https://github.com/felixrieseberg/windows-build-tools)
to resolve any issues you may face.

### Windows

Execute [`./windows-build-tools.sh`](./windows-build-tools.sh) or
run commands from therein manually.

### MacOS

Execute `xcode-select --install` in your Terminal.

### Unix/Linux

Install [GCC](https://gcc.gnu.org/). Here is a guide for
[Ubuntu 18.04](https://linuxize.com/post/how-to-install-gcc-compiler-on-ubuntu-18-04/).
Google for a similar guide matching your OS flavour.

## Extras

`utils-*.sh` scripts offer a couple of useful node scripts. Run either of
the two scripts based on your package manager preference
(run `./utils-npm.sh` when in doubt)
as **admin** (e.g. `sudo ./utils-npm.sh`).

The script will install:

### `doctoc`

[`doctoc`](https://github.com/thlorenz/doctoc) automates Table Of Contents (TOC)
creation for MD files. TOC in this repo `README.md` is created using `doctoc`.

How to use:
- add a placeholder `<!-- START doctoc -->\n<!-- END doctoc -->` in an
  `.md` file at a location you want TOC be placed at
- execute `doctoc README.md --github` in Terminal to create or update TOC

### `push-dir`

[`push-dir`](https://www.npmjs.com/package/push-dir) pushes a subtree to
a given branch on remote. Useful to publish with GitHub Pages a built
web app only.

How to use:
- run `push-dir --dir=dist --branch=gh-pages` to publish only
  what is built; normally it is `./dist` directory, which
  is also ignored (via `.gitignore`) and never tracked by git
- add a script to your `package.json` `scripts` section to publish a web app
  on e.g. github pages:
  `"publish": "push-dir --dir=dist --branch=gh-pages --cleanup --verbose"`

When added a script to `package.json` then `npm build && npm run publish`
(or `yarn build && yarn run publish`) will normally build and publish
an app on GitHub Pages (provided of course `build` script is also set up).

## Issues?

 If anything above contains errors, not quite clear or requires
 improvement or update, please, feel free submitting an
 [Issue](https://github.com/OleksiyRudenko/dev-env-frontend/issues).
