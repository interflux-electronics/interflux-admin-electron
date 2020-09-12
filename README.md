# Interflux Admin Electron app

This [Electron](https://www.electronjs.org/) app allows us to compile the [Interflux Admin website](https://interflux.com) into an installable Windows, Mac and Linux app.

Why? People prefer native apps than having to go to websites. Also, the Electron app allows us to extend the Admin website with native OS capabilities (read: things you cannot do in a browser).

What is the app for? It allows everyone at the company [Interflux Electronics] to create content for their website, publish articles, upload images and videos, process orders and more, all from one place.

## Setup

```
git clone git@github.com:interflux-electronics/interflux-admin-electron.git
nvm install
yarn install
```

## Serve local instance

```
yarn serve
```

## Run tests

```
yarn test
yarn test:unit
yarn test:e2e
```

Using:

- [electron-mocha](https://github.com/jprichardson/electron-mocha)
- [Chai](http://chaijs.com/api/assert/)
- [Mocha](https://mochajs.org/)
- [Spectron](http://electron.atom.io/spectron/)

## Build

Compile app into Mac & Windows installers:

```
yarn build:mac
```

Using: [electron-builder](https://github.com/electron-userland/electron-builder)

## Inspired from:

[https://github.com/szwacz/electron-boilerplate](https://github.com/szwacz/electron-boilerplate)
