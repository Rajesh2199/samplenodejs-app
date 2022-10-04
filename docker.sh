#!/bin/bash

dock()
{
    Container_Name="sampleapp"
    Image_Name="/sampleapp:latest"
    docker ps -aqf name=$Container_Name > id
    Container_ID=$(cat id)
    echo $Container_ID
    echo "function dock only"
}


dock_start()
{

    Container_Name="sampleapp"
    Image_Name="/samplealpp":latest"
    docker ps -aqf name=$Container_Name > id
    Container_ID=$(cat id)
    docker rm -f $(docker ps -a -q)

    docker build -t $Image_Name .
    docker run --name $Container_Name -d -p 8080:80 $Image_Name
    docker ps -a
}
