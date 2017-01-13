# Set the base image
FROM ubuntu
# Dockerfile author / maintainer 
MAINTAINER Carlos P. <cpgonzal@gmail.com> 

ARG GUID
ARG USER
ARG DATA_ROOT
ARG LIBS_ROOT
ENV GUID ${GUID:-900}
ENV USER ${USER:-docker}
ENV DATA_ROOT ${DATA_ROOT:-/data}
ENV LIBS_ROOT ${LIBS_ROOT:-/libraries}

# set user right away for determinism
RUN groupadd -r -g $GUID $USER \
  && useradd -r -s /bin/false -g $USER -u $GUID $USER

# create directory for persistence and give our user ownership
RUN mkdir -p $DATA_ROOT \
  && chown -R $USER:$USER $DATA_ROOT

RUN mkdir -p $LIBS_ROOT \
  && chown -R $USER:$USER $LIBS_ROOT


# persist data, set user
VOLUME $DATA_ROOT $LIBS_ROOT

USER $USER

CMD ["echo", "Data container for data and libraries"]