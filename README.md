<!--suppress HtmlDeprecatedAttribute -->
<div align="center">

# asdf-opentofu [![Build](https://github.com/defenseunicorns/asdf-opentofu/actions/workflows/build.yml/badge.svg)](https://github.com/defenseunicorns/asdf-opentofu/actions/workflows/build.yml) [![Lint](https://github.com/defenseunicorns/asdf-opentofu/actions/workflows/lint.yml/badge.svg)](https://github.com/defenseunicorns/asdf-opentofu/actions/workflows/lint.yml)


[opentofu](https://github.com/opentofu/opentofu) plugin for the [asdf version manager](https://asdf-vm.com).

This unofficial ASDF plugin is not officially supported by the OpenTofu team. Use at your own risk.

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- *NIX system (tested on Linux and macOS)
- `bash`, `curl`, `tar`: generic POSIX utilities.

# Install

Plugin:

```shell
asdf plugin add opentofu https://github.com/defenseunicorns/asdf-opentofu.git
```

opentofu:

```shell
# Show all installable versions
asdf list-all opentofu

# Install specific version
asdf install opentofu X.Y.Z

# Set a version globally (on your ~/.tool-versions file)
asdf global opentofu X.Y.Z

# Now opentofu commands are available
tofu --version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](CONTRIBUTING.md).

[Thanks goes to these contributors](https://github.com/defenseunicorns/asdf-opentofu/graphs/contributors)!

# License

See [LICENSE](LICENSE)
