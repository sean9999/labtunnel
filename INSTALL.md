# Labtunnel Install

1. create `~/.local/opt/fukt/labtunnel/bin`
2. put `./bin/*` in `~/.local/opt/fukt/labtunnel/bin/*`
3. put `./sytemd/user/*` in `~/.config/systemd/user/*`
4. put `./labtunnel` somewhere in your path like `/usr/local/bin/` or `~/.local/bin/`
5. start creating tunnels like so: `systemctl --user enable labtunnel@myserver` where _myserver_ is the name of a host that you can connect to by doing `ssh myserver`

Once you are properly set up you should be able to do `labtunnel help` and see output.

You can have different servers. They are managed using [systemd templates](https://www.freedesktop.org/software/systemd/man/systemd.service.html).


