# theia-playground

Playing around with theia.

[examples/browser/package.json](examples/browser/package.json) is the stock example from [eclipse-theia/theia](https://github.com/eclipse-theia/theia/tree/35d478043/examples/browser)

[theia-python/package.json](theia-python/package.json) is from [theia-ide/theia-apps](https://github.com/theia-ide/theia-apps/blob/a54aaa676e3db07d22ab75dde9f3447576135b4d/theia-python-docker/latest.package.json) and includes these plugins installed into `theiaPluginsDir` (ie: _theia-python/plugins_):

- [vscode-builtin-*](https://github.com/theia-ide/vscode-builtin-extensions) syntax highlighting and snippets for lots of languages, including python
- vscode-builtin-theme-*: color themes
- vscode-editorconfig
- vscode-python: [microsoft/vscode-python](https://github.com/microsoft/vscode-python) 2020.1.58038 interpreter, tests etc. Because this is installed, later versions cannot be installed via the Extensions pane from [open-vsx.org](https://open-vsx.org/extension/ms-python/python). This bundled version comes from microsoft/vscode-python [releases](https://github.com/microsoft/vscode-python/releases/).


## Plugins

Plugins specified in packages.json are stored in `theiaPluginsDir`, ie: (ie: _theia-python/plugins_)
Extensions installed via the Extensions pane by the user are stored in _~/.theia/extensions/-

View - Plugins will show everything in `theiaPluginsDir` and _~/.theia/extensions/_

## References

See [cli](https://github.com/eclipse-theia/theia/blob/f58de79ea44141649f449897baaefc2f5622eaa4/dev-packages/cli/README.md)
