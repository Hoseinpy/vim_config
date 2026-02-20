# vim_config
Vim classic configuration for developing

## Requirements
1. install rust-analyzer component with rustup
2. enter vim
3. run CocInstall coc-json coc-yaml coc-pyright coc-rust-analyzer
4. run CocConfig and put the code below in it:
```json
{
  "python.analysis.autoSearchPaths": true,
  "python.analysis.useLibraryCodeForTypes": true,
  "python.analysis.typeCheckingMode": "basic",
  "python.defaultInterpreterPath": "./venv/bin/python"
}
```
5. exit vim
