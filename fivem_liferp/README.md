## FiveM server running - La Life RP 

This is a modded version of FiveM server running  LifeRP by [Draziak](https://github.com/ldlac/La_LifeRP)

## Whats new
- beta stable release.
  - updated to new minimize base
  - stabilitiy fixes
  - build and script improvements
  - updated LifeRP

## Future features
- do a nice shutdown of the server when the docker stop command is issued
- docker accessible commands to
   - start/stop/restart the server
   - send console commands to the server
   - look at console output from the server
- improve the first time setup.
- bugfixing and improvents for a stable release.

## Starting the container

To run the latest stable version of this docker image run

	docker run --name fivem_liferp --restart=on-failure --link couchdb:couch -p 30120:30120 -p 30120:30120/udp wearingstorm/fivem_liferp

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

	--name fivem_liferp

to the run command to give it the name fivem, then you can start it easier with

	docker start fivem_liferp
	docker stop fivem_liferp

## First time run (WIP)

For persistency we recommend using mySQL as database and running it in the offical [mysql docker](https://hub.docker.com/_/mysql/).
Run the following command for the mysql docker.

	docker run --name mysql --restart=on-failure -e MYSQL_ROOT_PASSWORD=AReallySecurePasswordReally -v /home/fivem/db:/var/lib/mysql \
									-v /path/to/config/fivem.sql:/docker-entrypoint-initdb.d/fivem.sql mysql

the parameter

	-v /path/to/config/fivem.sql:/docker-entrypoint-initdb.d/fivem.sql

This will mount the fivem.sql file which will automaticlly setup the the database [download](https://gitlab.com/wearingstorm/docker_fivem/raw/develop/fivem_liferp/mysql-config/fivem.sql). Put this on the host and map it to /docker-entrypoint-initdb.d/fivem.sql

### Selecting version to download

If you want dont want the lastest docker image, but a specific docker version you can start the docker image by running,

	wearingstorm/fivem_liferp:{tag}

### Supported tags
**0.9:**
- Pre-alpha stable release
- MySQL support

**0.10 (broken)**
- Improved base image to do decrease size

**0.90**
- beta stable release.
  - updated to new minimize base
  - stabilitiy fixes
  - build and script improvements
  - updated LifeRP

## Source Repository
You are invited to contribute new features, fixes, or updates, large or small over at [GitLab](https://gitlab.com/wearingstorm/docker_fivem); we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

## Known bugs
Report bugs over at [GitLab issues](https://gitlab.com/wearingstorm/docker_fivem/issues)