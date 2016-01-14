FROM ubuntu

MAINTAINER Hexagon6 <hexagon6@fet.li>

ENV version 1.8.9
ENV home /minecraft

RUN apt-get update && \
  apt-get install -yq --no-install-recommends default-jre-headless wget && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
RUN mkdir $home && \
  cd $home && \
  wget https://s3.amazonaws.com/Minecraft.Download/versions/$version/minecraft_server.$version.jar && \
  ln -s minecraft_server.$version.jar minecraft_server.jar && \
  echo eula=true > eula.txt

EXPOSE 25565

CMD cd $home && java -jar minecraft_server.jar
