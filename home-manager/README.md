Do
```bash
nix run home-manager/master -- init --switch
```
Then just copy everything to ~/.config/home-manager/ and
```bash
cd ~/.config/home-manager
nix flake update
home-manager switch
```