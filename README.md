# int
demo-code
 in this we have clone a repository from github a deploy through the help 0f docker engine 
 steps required-
 1> first we will update our system 
    sudo apt-get update

 2> now we will install docker
    sudo apt install docker.io

3> if we want to use the docker command without being the sudo user we will modify the user 
  sudo usermod -aG docker #USER

 4> We will Create a Dockerfie without any extension 
       # Use the official Nginx image as a base
        FROM nginx:alpine

       # Copy the HTML file to the Nginx server's document root
     COPY index.html /usr/share/nginx/html/index.html

      # Expose port 80
        EXPOSE 80

      # Start the Nginx server
      CMD ["nginx", "-g", "daemon off;"]
5> then build by giving the command docker build -t web_app:latest .
6> now we can create container after succesfull completion of docker images
    docker run -p 80:80 web-app: latest
