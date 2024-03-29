# crystal-env

[![CI](https://github.com/crystal-lang/crystal-env/workflows/CI/badge.svg)](https://github.com/crystal-lang/crystal-env/actions)

This shard provides environment detection. The selected environment is configured using `CRYSTAL_ENV` environment variable.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  crystal-env:
    github: crystal-lang/crystal-env
```

## Usage

* Add the following require in the application code.
The default environment will be `development`.

```crystal
require "crystal-env"
```

* In the `spec/spec_helper.cr` require `crystal-env/spec` **before** your app code.
When running `crystal spec` the default environment will be `test`.

```crystal
require "spec"
require "crystal-env/spec"
require "../your-app"
```

* Use the following methods to detect the environment

  * `Crystal.env.development?`
  * `Crystal.env.production?`
  * `Crystal.env.test?`

* Use the following method to get name the environment

  * `Crystal.env.name`

* Set `CRYSTAL_ENV` to `development`, `production` or `test`


## Contributors

- [bcardiff](https://github.com/bcardiff) Brian J. Cardiff - creator, maintainer
