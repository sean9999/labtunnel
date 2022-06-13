# LabTunnel

Labtunnel uses systemd and ssh to make managing SOCKS5 proxies easy. It is based on a [project by the same name](https://github.com/renxida/labtunnel), which in turn is based on [another project](https://gist.github.com/drmalex07/c0f9304deea566842490). It is indended for Linux workstations using the Gnome Desktop Environment. But it could easily be modified to work with other DEs.

##	Installation

After cloning the repo:

```
$ cd labtunnel
$ sudo -E make install
```

You will now have a utility called `labtunnel` which will make use of code that has been installed to `~/.local/opt/labtunnel`.

##	Getting Started

First off, you'll want to make sure you have at least one server you can connect to securely using SSH without passwords, to act as your bastion host. You may have an `~/.ssh/config` file that looks like this:

```
bastion1
	HostName ec2-3-99-57-78.us-west-2.compute.amazonaws.com
	User bob
	IdentityFile ~/.ssh/id_rsa

bastion2
    HostName ec2-12-34-50-102.us-east-2.compute.amazonaws.com
    User alice
    IdentityFile ~/.ssh/id_rsa
```

where "bastion1" and "bastion2" are servers you want available as SOCKS5 proxies. All configuration should be in the config files so that to SSH in would be a simple `ssh bastion1`. This is because labtunnel treats the hostname as a systemd [instance name unit specifier](https://www.freedesktop.org/software/systemd/man/systemd.unit.html#Specifiers).

Here's how you would direct traffic through the _bastion1_ server:

```
$ labtunnel enable bastion1 # to enable
$ labtunnel start bastion1 # start the tunnel
$ labtunnel on # to tell your desktop environment that you want all network traffic to use that tunnel
$ firefox https://ifconfig.co # checking your public IP is the easiest way to see if your tunnel is being used
```

## Under the hood



## Hacking

All subcommands live in the ./bin/ folder. Simply adding a new file in there is sufficient for adding new functionality. Ideally Labtunnel could offer support for DEs other than Gnome, and possibly support Mac OS too. PRs welcome.