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
* [scripts/oci-ubuntu-fw.sh] will add the needed rules in the firewall for default minecraft and [simple-voice-chat](https://modrepo.de/minecraft/voicechat/wiki/server_setup)
* [scripts/docker.sh] goes through adding docker and host level restic
* [scripts/update.sh] is a full command list to upgrade and clean (I keep forgetting)