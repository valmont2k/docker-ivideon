# docker-ivideon
# Purpose
Create a container running the Ivideon server

# First start
To configure Ivideon, the container first needs to be started with the following parameters:

	sudo docker run -rm -it -v /path/to/videoserverd.conf:/opt/ivideon/ivideon-server/videoserverd.config --name ivideon ivideon --attach --email <email> --server-name <name>

# Start the server
To start the server:

	sudo docker run -rm -d -v /path/to/videoserverd.conf:/opt/ivideon/ivideon-server/videoserverd.config --name ivideon ivideon

# Disclaimer
I'm in no way affiliated to Ivideon and cannot support its products. I just needed an easy method to run my ivideon server in a container.
