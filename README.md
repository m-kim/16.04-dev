A base docker for development purposes.

It assumes that X will be shared between the docker and the desktop. 
So, it copies NVIDIA-DRIVER.run from the host to the docker and 
installs the driver in the docker.
