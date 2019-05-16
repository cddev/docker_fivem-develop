Some ekstra text that will be put into read me in future


### versions available (coming)

### Look at the last output from the fivem server (coming)

### Sending commands to the server console (coming)
**Not implemented yet**

	docker exec fivem send {command}

It will continue to output everything from the console until you press CTRL-C

### Starting and stopping the server (coming)
**Not implemented yet**

To stop the server but not the container do

	docker exec fivem stop

To start it after being stopped do

	docker exec fivem start

Finally to restart it do

	docker exec fivem restart

### Stopping the container (coming)
**Not implemented yet**

When the container is stopped with the command

	docker stop fivem

the server will shutdown nicely with a console stop command to give it time to save everything before stopping the container.

## Having the fivem files on the host machine
**Not implemented yet**

If you delete the container all your files in fivem will be gone. To save them where it's
easier to edit and do a backup of the files you can attach a directory from the host machine
(where you run the docker command) and attach it to the local file system in the container.
The syntax for it is

	-v /host/path/to/dir:/container/path/to/dir

To attach the fivem directory in the container to directory /home/fivem/ you add

	-v /home/fivem:/fivem-server

### Problems with external mounted volumes
**Not implemented yet**

When a external volume is mounted the UID of the owner of the volume may not match the UID of the fivem user (1000). This can result in problems with write/read access to the files.

To address this problem a check is done between UID of the owner of /fivem-server and the UID of the user fivem. If there is a mismatch the UID of the fivem user is changed to match the UID of the directory.
