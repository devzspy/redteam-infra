Mythic C2
=========

> Mythic is a multiplayer, command and control platform for red teaming operations. It is designed to facilitate a plug-n-play architecture where new agents, communication channels, and modifications can happen on the fly.

[https://docs.mythic-c2.net/](https://docs.mythic-c2.net/)

Passwords are generated on the first run and placed in `/opt/mythic/.env`. You will need to get `MYTHIC_ADMIN_PASSWORD` from `.env` to login as `mythic_admin`.

**Mythic is fickle, and may not want to start on the first run. If this happens, I've had the best success stopping/uninstalling/reinstalling. You can use this commend to do it:**

```bash
cd /opt/mythic && sudo ./mythic-cli stop && sudo ./mythic-cli uninstall && sudo rm -rf /opt/mythic && docker rm $(docker ps -a -q --filter "name=mythic") && cd
```

### Agents
No agents are installed by default. To install agents visit https://github.com/MythicAgents and then use:
```commandline
cd /opt/mythic && sudo ./mythic-cli install https://github.com/MythicAgents/<AGENT>
```

Be sure to replace `<AGENT>` with the agent you would like to install.

### C2 Profiles
No C2 profiles are installed by default. You can install C2 profiles by visiting https://github.com/MythicC2Profiles and then use:

```commandline
cd /opt/mythic && sudo ./mythic-cli install github https://github.com/MythicC2Profiles/<PROFILE>
```

Be sure to replace `<PROFILE>` with the profile you would like to install.

Requirements
------------

Docker needs to be installed on the target host. The docker role included in redteam-infra is included to ensure docker is installed.


Dependencies
------------

`docker` role

Example Playbook
----------------

```yml
- hosts: servers
  roles:
   - mythic
```
