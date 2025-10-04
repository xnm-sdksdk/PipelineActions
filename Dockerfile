FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    bash \
    coreutils \
    curl \
    vim \
    && rm -rf /var/lib/apt/lists/*

COPY simple.py /usr/local/bin
RUN chmod +x /usr/local/bin/simple.py

ENTRYPOINT [ "/usr/local/bin/simple.py" ]
CMD ["/bin/bash"]
