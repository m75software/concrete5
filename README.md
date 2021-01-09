# concrete5
A Dockerfile for building and running a Concrete5 CMS in a container.

Use the following command to run the container:
```
docker run -it --name concrete5 \
    -v /path/on/host/config:/var/www/html/application/config \
    -v /path/on/host/files:/var/www/html/application/files \
    -v /path/on/host/packages:/var/www/html/packages \
    -v /path/on/host/updates:/var/www/html/updates \
    -p 80:80
    m75software/concrete5
```

Official Concrete5 website: [https://www.concrete5.org/](https://www.concrete5.org/)

Issues with this Dockerfile can be submitted here: [m75software / concrete5 - Issues](https://github.com/m75software/concrete5/issues)
