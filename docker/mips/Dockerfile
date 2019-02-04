FROM develop


RUN sudo apt-get install -y default-jre default-jdk


WORKDIR /home/default
RUN wget https://courses.missouristate.edu/KenVollmar/mars/MARS_4_5_Aug2014/Mars4_5.jar

RUN echo '#!/bin/bash -e \n\
java -jar /home/default/Mars4_5.jar "$@"' | sudo tee /usr/local/bin/mars 

RUN sudo chmod +x /usr/local/bin/mars


