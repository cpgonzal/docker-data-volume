FROM ubuntu

ENV user bigdata
ENV data_root /data
ENV libs_root /libraries

# set user right away for determinism
RUN groupadd -r $user \
  && useradd -r -s /bin/false -g $user $user

# create directory for persistence and give our user ownership
RUN mkdir -p $data_root \
  && chown -R $user:$user $data_root

RUN mkdir -p $libs_root \
  && chown -R $user:$user $libs_root


# persist data, set user
VOLUME $data_root $libs_root

USER $user

CMD ["echo", "Data container for data and libraries"]