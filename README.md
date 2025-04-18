# Docker Game Servers

### Docker all the things
A lightweight set of docker compose files for easy deploy on an OCI ARM64 VPS

## Rationale & Feature-set
While many dashboards exist, I wanted to keep overheads as low as possible for the ARM node, while making management nicer than the legible-if-you-happen-to-be-me set of [bash scripts](https://github.com/KenjiE20/minecraft-scripts) I built up initially.

* iptables rules
* Docker installer
* Handle multiple Minecraft docker instances
    * (Optionally) At once
    * **Backups**
* Minimal nginx and proxy stack

# Usage

It is expected to be set up on an OCI instance running Ubuntu, as such;
* [scripts/oci-ubuntu-fw.sh](scripts/oci-ubuntu-fw.sh) will add the needed rules in the firewall for default minecraft and [simple-voice-chat](https://modrepo.de/minecraft/voicechat/wiki/server_setup)
* [scripts/docker.sh](scripts/docker.sh) goes through adding docker and host level restic
* [scripts/update.sh](scripts/update.sh) is a full command list to upgrade and clean (I keep forgetting)

Copy `minecraft-example` into other directories and edit `docker-compose.yml` as needed, refer to [itzg/docker-minecraft-server](https://github.com/itzg/docker-minecraft-server)'s [Docs](https://docker-minecraft-server.readthedocs.io/en/latest/)

`mc-files` is expected to be relative to other compose folders as laid out in this repo

I'm including the `mc-router` example and config options, however it will not work with multiple simple-voice-chat instances, so not used in current set up. For that usage using SRV records for minecraft and multiple ports is the method. See mc-router [issue](https://github.com/itzg/mc-router/issues/261)