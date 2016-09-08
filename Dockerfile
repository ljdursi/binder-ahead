FROM andrewosh/binder-base

USER root

# Add R dependencies
RUN apt-get update
RUN apt-get install -y r-base r-recommended r-cran-ggplot2 libzmq3-dev \
  libxrender1 xfonts-base xfonts-scalable libsm6 libfontconfig1 \
  libzmq3-dev libcurl4-gnutls-dev libssh2-1-dev libcairo2-dev

# Add 
#COPY install-irkernel.R /home/install-irkernel.R
#COPY install-other.R /home/install-other.R

RUN conda install -y -c r=3.2.2 r-essentials=1.1
RUN conda install -y -c bioconda bioconductor-deseq 

#RUN R --no-save < /home/install-irkernel.R
#RUN R --no-save < /home/install-other.R

USER main
