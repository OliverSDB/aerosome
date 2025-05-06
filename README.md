# Aerosome
This tool is based of Hyprsome. It makes the workspace workflow similar to AwesomeWM.

And yes the code sucks, but it works so I don't really care.

To be honest thats all.
Have fun it should work :)


## Usage
First make the `build` directory and then compile using `make`:
```sh
make compile
```

now but the output where ever and put this in your config:
```toml
alt-1 = 'exec-and-forget <path/to/aerosome> go 1'
```
To go to a workspace


```toml
alt-1 = 'exec-and-forget <path/to/aerosome> move 1'
```
To move a window to a workspace
