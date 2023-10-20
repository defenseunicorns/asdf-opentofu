# Contributing

[//]: # (Author credit: https://github.com/rynkowsg/asdf-opentofu/blob/ae591570e5e6d002cbd57cba9acae1b3d13f9f0a/CONTRIBUTING.md)

## Lint and format

First you need to install deps:

```shell
asdf plugin add shellcheck https://github.com/luizm/asdf-shellcheck.git
asdf plugin add shfmt https://github.com/luizm/asdf-shfmt.git
asdf install
```

Then you can lint and format:

```shell
./scripts/format.bash
./scripts/lint.bash
```

## Testing Locally

**Running standalone scripts**

The scripts can be run standalone:
```bash
./bin/latest-stable
```

Some of them requires to provide environment variables.
For details and example look at the top comment of the files inside of `bin/`.

**Installing the plugin from local clone**

You can install the plugin based on the local clone of the plugin:
```bash
asdf plugin add opentofu .
```
_`.` here points to the current directory containing the plugin sources._

Then you can run all commands you need, e.g.
```bash
asdf list-all opentofu
```

**Plugin test**

asdf provides plugin test:
```bash
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]
```

asdf provides plugin test. It can help to validate whether the download/installation is successful. E.g.
```bash
asdf plugin test opentofu https://github.com/defenseunicorns/asdf-opentofu.git "opentofu --help"
```
You can also use local location (here `.`) to test plugin:
```bash
asdf plugin test opentofu . tofu --version
```

**DEBUG flag**

All of the above options support DEBUG flag. If you proceed the call with `DEBUG=true` you will get additional logs.

Running standalone script:
```bash
DEBUG=true ./bin/latest-stable
```

Running via `asdf`:
```bash
DEBUG=true asdf latest opentofu
```

Running via `asdf plugin test`:
```bash
DEUBG=true asdf plugin test opentofu . tofu --version
```

## Commit style

Commit and PR titles should follow [The Conventional Commits](https://www.conventionalcommits.org/) specification.

Available types:
- feat: A new feature
- fix: A bug fix
- docs: Documentation only changes
- style: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
- refactor: A code change that neither fixes a bug nor adds a feature
- perf: A code change that improves performance
- test: Adding missing tests or correcting existing tests
- build: Changes that affect the build system or external dependencies (example scopes: gulp, broccoli, npm)
- ci: Changes to our CI configuration files and scripts (example scopes: Travis, Circle, BrowserStack, SauceLabs)
- chore: Other changes that don't modify src or test files
- revert: Reverts a previous commit
