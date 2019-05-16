## GTA5 server FiveM on Ubuntu (beta)

This is a clean installed FiveM server that can be used as a base for modding or inherited to build modded docker images (as [lifeRP](https://gitlab.com/wearingstorm/docker_fivem/tree/master/fivem_base))

## Whats new
- beta stable release.
  - minimize image
  - stabilitiy fixes
  - build and script improvements

## Future features
- do a nice shutdown of the server when the docker stop command is issued.
- docker accessible commands to
   - start/stop/restart the server
   - send console commands to the server
   - look at console output from the server

## Starting the container

To run the latest stable version of this docker image run

	docker run --name fivem --restart=on-failure --link couchdb:couch -p 30120:30120 -p 30120:30120/udp wearingstorm/fivem

the parameter

	-p 30120:30120 and 30120:30120/udp

tell on witch external port the internal 30120 should be connected, in this case the same, if
you only type -p 30120 it will connect to a random port on the machine.

the parameter

	--restart=on-failure

tells docker to restart the image it the server crashes. You can add a counter by doing --restart=on-failure:3 if you want to limit number of tries.

the parameter

	--link couchdb:couch

linkes the docker container to you running CouchDB container

the parameter

	-v /path/to/mods:app/resources

mount a directory with mods that will be merged with the servers resources folder when started.
for mounting custom config or logo the following options can be added.

	-v /path/to/config/citmp-server.yml:/app/fivem-server/citmp-server.yml
	-v /path/to/config/logo.png:/app/fivem-server/logo.png

## Giving the container a name

To make it easier to handle you container you can give it a name instead of the long
number thats normally give to it,

	--name fivem

to the run command to give it the name fivem, then you can start it easier with

	docker start fivem
	docker stop fivem

## First time run (coming)

For persistency we recommend using a docker database, like [couchdb](https://hub.docker.com/_/couchdb/) or [mysql docker](https://hub.docker.com/_/mysql/).
Follow the guides for the choosen database docker and link the docker with --link parameter. For mysql setup the LifeRP image can be used as refrense.

### Selecting version to download

If you want dont want the lastest docker image, but a specific docker version you can start the docker image by running,

	wearingstorm/fivem:{tag}

### Supported tags
**0.9:**
- Updated to FiveM version (30.04.2017)
- Base docker image released

**0.10 (broken)**
- minimizing of image

**0.90**
- beta stable release.
  - minimize image
  - stabilitiy fixes
  - build and script improvements

## Source Repository
You are invited to contribute new features, fixes, or updates, large or small over at [GitLab](https://gitlab.com/wearingstorm/docker_fivem); we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

## Known bugs
Report bugs over at [GitLab issues](https://gitlab.com/wearingstorm/docker_fivem/issues)
