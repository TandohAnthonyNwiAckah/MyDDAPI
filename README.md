# MY DOTNET CORE DOCKER API (MyDDAPI)

Intro to deploying my Donet Core API with Docker.

Docker is a software platform that allows you to ```build,test and deploy``` applications quickly.


## WHY DOCKER ?

- It lets you ship code faster and get a single object that can reliably ````run anywhere````.

- It also occupy less space and very easy to scale up.


It uses ```Client-Server architecture```. Docker packages software into standardized units called ```Containers``` that
have everything the software needs to run including libraries,system tools, code and runtime.

Docker Host is the machine running the Docker server.

##  4 MAIN COMPONENETS OF DOCKER

- ```Docker Client and Server```

- ```Docker Images ``` : is a template with instructions which is used for creating Docker Container.
It is built using the ```Docker File``` (text file which contains commands for building a Docker Image
 ) and stored  in a Docker Hub or in a repository.

- ```Docker Container```

- ```Docker Registry```  : is an open source server-side service used for hosting and distributing images. The
default registry of docker is called ```DOCKER HUB```.



##  TOOLS NEEDED FOR THIS PROJECT

- .NET Core SDK  (I’m using 2.2)

- Text Editor or IDE (eg. VS CODE or VS STUDIO)

- Docker


## GETTING STARTED.

- Create a globaljson in the root of the project

> ```dotnet new globaljson```

- Select the Dotnet version "2.2.100"
 >  ```dotnet -- version``` to see all versions installed

````

{
  "sdk": {
    "version": "2.2.100"
  }
}

````

- Create new webapi in the same folder containing the globaljson

>   ```dotnet new webapi```

- You can build and run to see the project working.

>  ```dotnet run```

- Access it on locally on <http://localhost:5000/api/values> to view the api.

- Create Dockerfile if it doesn't exist

- Once the Dockerfile is created,run the command below
>   ``` docker build -t tanacom/myddapi . ```


> Docker Hub ID\Project Name:Version

> ```tanacom``` here is my Docker Hub ID
> myddapi is my project name and should always be in ```lowercase```.
> we omitted the version here.you can should to add it.
> Place a space and ```period``` after the project name always .

Also, you don’t have to provide your Docker Hub ID in the name
but it’s useful if you’re pushing it up to the ```Docker Hub for deployment```.

- Type the command below to see  your created docker image.
> ```docker images```

- Once we have our image created, we just run it with the command below.
> ```docker run -p 8080:80 tanacom/myddapi```

Image should now be running as a ```Container```! The only thing of note is the ```“-p”``` flag – this is a ```port-mapping```,
in this case it’s saying map ````port 8080 on my PC to port 80 ````of the container.

 So to access the api, we need to use port 8080 as follows:

> <http://localhost:8080/api/values>

- To see all running container, run the below command

>  ```docker ps```

- Install the Docker extension if using VS CODE, you can see running containers and perform tasks on it.

- Run the command below to stop the container in cmd
 >   ```docker stop <CONTAINER ID>```

- Login to Docker Hub if already have account with them.
 >    ```docker login --username=tanacom```

 > NB: ```tanacom``` here is my username.

- Once login, run the Docker push command to push to the Docker Hub

>    ```docker push tanacom/myddapi```

> NB: ```myddapi``` here is my project name.


- Go to your ```Docker Hub``` to check your project.

Good to go.
