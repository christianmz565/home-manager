Just move these to /etc/nixos/ and
```bash
cd /etc/nixos/
sudo nix flake update
sudo nixos-rebuild switch --flake .
``` 

I've read that you can move this config to ~ and symlink it to the config dir but that feels odd in some way