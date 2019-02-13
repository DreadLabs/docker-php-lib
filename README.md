# php-lib

## Description

PHP **commandline-only** images with some pre-installed extensions for PHP library programming.

### Available extensions

  * ast
  * bcmath
  * curl
  * dom (**included** by xml in 7.3)
  * gd
  * gmagick
  * gmp
  * mcrypt (**not** in 7.3)
  * soap
  * xml
  * xsl (**included** by xml in 7.3)
  * zip

### Flavours

  - `base`: base image for general usage
  - `dev`: development image with development tools:
     * `composer`
     * `xdebug`/`phpdbg`
     * `php-dbg`, custom command line wrapper for debugging in PhpStorm
     * `php-prof`, custom command line wrapepr for generating XDebug profiling snapshots (Cachegrind)
     * [`deptrac`](https://github.com/sensiolabs-de/deptrac)

## Makefile

Tested with GNU Make 3.81.

`FLAVOUR` environment variable defaults to `base`.

### List available versions to build

    > make versions-avail
    < 7.0/

### Build

    make build -e VERSION=x.y [FLAVOUR=base|dev]

### Release

    make release -e VERSION=x.y [FLAVOUR=base|dev]

## License

[MIT](LICENSE)
