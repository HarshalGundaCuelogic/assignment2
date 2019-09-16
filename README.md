# assignment2

Steps for the assignment:

1.	Run 'fileserver.sh' in the root folder using command as 'sh fileserver.sh'.

2.	It will create the network as 'mynetwork1' with the subnet as '172.168.11.40/29'.

3.	It will create the volume for server as 'servervol'.

3.	It will automatically build the image named as 'serverimage:1.0' using Dockerfile placed in the folder named as 'server' which will create a file of size 		1KB automatically in '/serverdata' directory which is attached to 'servervol' volume in the container.

4.	In the Dockerfile, I have used a base image 'alpine:latest' and then installed the packages/apks for the communication.

5.	Also, I have created a user in it and set a password to it.

6.	Now, I am running the server container named as 'ServerContainer' in the background using detached mode.

7.	This script will run the 'fileclient.sh' file automatically.

8.	Here, I am created a volume for client mnamed as 'clientvol'.

9.	It will also automatically build the image named as 'clientimage:1.0' using Dockerfile placed in the folder named as 'client'.

10.	I have used the same base image 'alpine:latest' in the Dockerfile and installed the required packages/apks for the communication with other container.

11.	The client will download/get the file from the server using 'scp' and also verify its checksum. This operation is done using the 'run_client.sh' script.

12.	The '/clientdata' directory is attached to the volume named as 'clientvol', so that the received file will get saved in the 'clientvol' volume.

13.	Now, it will run the client container named as 'ClientContainer' in the interactive mode. You can now fire 'ls' command to check the files in the 
	'/clientdata' directory.
