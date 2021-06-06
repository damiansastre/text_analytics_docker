# DIGI223 

Dockerfile for DIGI223 Text Analytics package

## Installation

```
docker build -t text_analytics .
```

After the project finished building either start the container from Docker GUI or run the following command:

```
#If you already have an application running on port 8888 change the first part of the port part of the following command : PPPP:8888

docker run -p 8888:8888 text_analytics
```

The output of the docker command will have the following line after initialization:

```
    To access the notebook, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/nbserver-8-open.html
    Or copy and paste one of these URLs:
        http://cb67dc014507:8888/?token=TOKEN_GOES_HERE
     or http://127.0.0.1:8888/?token=TOKEN_GOES_HERE
```

Either copy paste the URL given by the command or go to : [Localhost](http://localhost:8888) and enter the token given in the previous example.<br>Remember to change the port if you changed the run command.

