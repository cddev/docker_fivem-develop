## GTA5 server FiveM on Ubuntu

This docker image runs the latest version of FiveM Server.

Each time the build runs, jenkins will download the lastest version of [FiveM](https://fivem.net) and push it to [Docker Hub](https://hub.docker.com/r/wearingstorm/fivem/)

The project is splint into to two; a base image and a complete rp starter image. The base image is for those who want to build their own from scrach or want to fork the project and make their own docker images. The rp image (**life-rp** by [Draziak](https://github.com/ldlac/La_LifeRP)) is for those who just want to a plug-and-play solution. It containts the basics to get up and running and also gives you the possibility to add more mods.

This is a **early alpha project** and still under development.
    - **DO NOT** use for **production** servers yet, this is only for testing. New builds **WILL be BREAKING!!!**
    - A lot of config and mods are hard code for now.

## Whats new in 0.10
- Improved base image to do decrease size


## Future features
- do a nice shutdown of the server when the docker stop command is issued
- docker accessible commands to
   - start/stop/restart the server
   - send console commands to the server
   - look at console output from the server

See each dockers README for specifics about that image.
 - [FiveM](https://gitlab.com/wearingstorm/docker_fivem/tree/master/fivem_base)
 - [FiveM - LifeRP](https://gitlab.com/wearingstorm/docker_fivem/tree/master/fivem_liferp)

## Issues

This is **pre-ALPHA** so there is still a lot of work going on an most of it will be breaking changes. This is only for testing and not for production. Bugreporting will open later when we are at a more stable build and release cycle

## Contributing

We are not ready yet for contributions, but when we move into a more stable build we welcome any pull-requests at that time.

### Supported tags
**0.9:**
- Updated to FiveM version (30.04.2017)
- Base docker image released
- First LifeRP image released