FROM andrewosh/binder-base

USER root

# Add R dependencies
RUN apt-get update
RUN apt-get install -y libzmq3-dev \
  libxrender1 xfonts-base xfonts-scalable libsm6 libfontconfig1 \
  libzmq3-dev libcurl4-gnutls-dev libssh2-1-dev libcairo2-dev

RUN conda install -y -c r r-base=3.2.2 r-essentials=1.1 r-xml r-sqlite
RUN conda install -y -c bioconda bioconductor-deseq 

USER main
