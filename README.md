Instructions for Docker:\
To run this app in a Docker container, Docker must already be 
installed. These commands were run on ubuntu cli:
1. Navigate to directory containing the Dockerfile
2. Build the Docker image and give it a name with the following command:
   * docker build -t <give_image_name_here> .
3. Run the Docker image with the following command:
   * docker run -p <server_port>:<app_port> <use_image_name_here>

Sample commands:\
**docker build -t app_to_serve .**\
**docker run -p 8080:80 app_to_serve**

The app is now accessible at 127.0.0.1/8080. If you need to use a different
port for any reason, simply supply that port to the docker run command:

**docker run -p 25565:80 app_to_serve**

The app is now accessible at 127.0.0.1\25565
***

To host this app without Docker would require a web server be installed on the target machine.
The Docker image created is for an nginx server with the map api files copied into its root directory.


*** 
This school project was meant to showcase querying an API and parsing out desired data to display.
Each path element in the SVG file contains a code that is used to query a specific API. Each path is
given a mouseover event listener that queries the API with its unique code. The resultant payload is 
then parsed and the data displayed. 