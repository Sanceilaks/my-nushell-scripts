# Install script installer using one command
```nu
http get https://raw.githubusercontent.com/Sanceilaks/my-nushell-scripts/main/install_script.nu --raw | prepend "\n" | save $nu.config-path --append | source $nu.config-path
```
