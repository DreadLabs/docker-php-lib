# php-lib

## Description

PHP **commandline-only** images with some pre-installed extensions for PHP library programming.

### Available extensions

  * ast
  * bcmath
  * cli
  * curl
  * dom
  * gd
  * gmagick
  * gmp
  * intl
  * json
  * mbstring
  * mcrypt
  * soap
  * sqlite3
  * xml
  * xsl
  * zip

### Flavours

  - `base`: base image for general usage
  - `dev`: development image with development tools:
     * `composer`
     * `xdebug`/`phpdbg`
     * `php-dbg`, custom command line wrapper for debugging in PhpStorm
     * [`deptrac`](https://github.com/sensiolabs-de/deptrac)

## Makefile

Tested with GNU Make 3.81. `VERSION` environment variable defaults to `latest`.
`BASE` environment variable defaults to `base`.

### Build

    make build [-e CONTEXT=base|dev VERSION=x.y]

### Release

    make release [-e CONTEXT=base|dev VERSION=x.y]

## License

[MIT](LICENSE)

