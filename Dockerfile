FROM ubuntu:latest

RUN apk add --update \
    bash \
    coreutils \
    curl \
    vim

COPY simple.py /usr/local/bin
RUN chmod +x /usr/local/bin/simple.py

ENTRYPOINT [ "/usr/local/bin/simple.py" ]
CMD ["/bin/bash"]