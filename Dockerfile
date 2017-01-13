# Set the base image
FROM ubuntu
# Dockerfile author / maintainer 
MAINTAINER Carlos P. <cpgonzal@gmail.com> 

ARG guid
ARG user
ARG data_root
ARG libs_root
ENV guid ${guid:-900}
ENV user ${user:-docker}
ENV data_root ${data_root:-/data}
ENV libs_root ${libs_root:-/libraries}

# set user right away for determinism
RUN groupadd -r -g $guid $user \
  && useradd -r -s /bin/false -g $user -u $guid $user

# create directory for persistence and give our user ownership
RUN mkdir -p $data_root \
  && chown -R $user:$user $data_root

RUN mkdir -p $libs_root \
  && chown -R $user:$user $libs_root


# persist data, set user
VOLUME $data_root $libs_root

USER $user

CMD ["echo", "Data container for data and libraries"]