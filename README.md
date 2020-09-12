# Interflux Admin Electron app

#### What

This [Electron app](https://www.electronjs.org/) wraps the [Interflux Admin website](https://interflux.com) into an installable Windows, Mac and Linux app.

#### Why

The Interflux team prefers native apps over having to go to website. Also, the Electron app allows us to extend the Admin website with native OS capabilities (read: things you cannot do in a browser).

#### Purpose

This app enables the [Interflux Electronics](https://interflux.com) team and their partners to create content for their websites, publish articles, download images, upload videos, process orders and more, all from one place.

## Development

Get set up:

```
git clone git@github.com:interflux-electronics/interflux-admin-electron.git
nvm install
yarn install
```

Serve a local instance:

```
yarn serve
```

Run tests:

```
yarn test
yarn test:unit
yarn test:e2e
```

## Production

#### Build

Build installers for Mac, Windows and Linux:

```
yarn build
```

#### Deploy

TODO


## Inspired from:

[https://github.com/szwacz/electron-boilerplate](https://github.com/szwacz/electron-boilerplate)
