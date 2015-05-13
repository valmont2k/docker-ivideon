# docker-ivideon
# Purpose
Create a container running the Ivideon server

# First start
Create an empty conf file: touch /path/to/videoserverd.conf
To configure Ivideon, the container first needs to be started with the following parameters:

	sudo docker run --rm -it -v /path/to/videoserverd.conf:/opt/ivideon/ivideon-server/videoserverd.config --name ivideon -p 1080:80 --entrypoint=bash nheinemans/ivideon

Then, start the following daemons inside the container:
	/etc/init.d/apache2 start
	/etc/init.d/nettop_setup_ctl
	/etc/init.d/videoserver start

Browse to http://<IP>:1080. The default password is 123456. Configure your ivideon account and add camera's. When done, close the shell to destroy the temporary container.

# Start the server
To start the server:

	sudo docker run -d -v /path/to/videoserverd.conf:/opt/ivideon/ivideon-server/videoserverd.config --name ivideon -p 8080:8080 nheinemans/ivideon

# Disclaimer
I'm in no way affiliated to Ivideon and cannot support its products. I just needed an easy method to run my ivideon server in a container.
