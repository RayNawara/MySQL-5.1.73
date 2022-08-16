# MySQL-5.1.73

## Run 

Start a **mysql** server instance:
    
    # general form
    $ $ docker run [OPTIONS] IMAGE[:TAG|@DIGEST] [COMMAND] [ARG...]
    
    # example
    $ docker run -d --name mysql-5.1.73 -p 3307:3306 -e MYSQL_ROOT_PASSWORD=[password] vsamov/mysql-5.1.73:latest

... where some-mysql is the name you want to assign to your container, my-secret-pw is the password to be set for the MySQL root user and tag is the tag specifying the MySQL version you want. See the list above for relevant tags. If port 3306 is used replace `-p 3306:3306` with `-p 3307:3306`
    
Other **commands**:

    ## kill the container
    docker kill [container-id]
    
    # shell script/shell access
    $ docker exec -it vsamov/mysql-5.1.73:latest bash
    
    # viewing MySQL logs
    $ docker logs vsamov/mysql-5.1.73:latest
    
    # start exisitng container (often: after Docker Engine update)
    docker start [CONTAINER ID]