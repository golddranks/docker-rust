FROM debian:stretch
MAINTAINER Johannes Schickling "schickling.j@gmail.com"

# needed by cargo
ENV USER root

ADD install.sh install.sh
RUN chmod +x install.sh 
RUN ./install.sh
RUN rm install.sh

VOLUME ["/source"]
WORKDIR /source
CMD ["bash"]
