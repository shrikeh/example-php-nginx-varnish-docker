# Example of dockerized nginx and PHP-FPM with sockets

Just a simple example of how to set up nginx and PHP-FPM, with a "sandwich" of varnish and a forward nginx instance to serve static assets.

## Installation & Prerequisites

### Requirements

* [docker-compose]
* Make

### Mac OS X
A [Brewfile][Brewfile] is available to install all the requirements
```bash
brew bundle
```

### Running the application


```bash
make run
```

This will create a `.env` file in the project root with sensible defaults, and then run `docker-compose` to build and run the application.

[docker-compose]: https://docs.docker.com/compose/
[Brewfile]: ./Brewfile
