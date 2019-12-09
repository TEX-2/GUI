FROM ubuntu:18.04
MAINTAINER pshcyrill@mail.ru

RUN apt-get update
RUN ln -s /usr/share/zoneinfo/Europe/Moscow /etc/localtime
RUN apt-get install -y python python-pip python-sip python-dev python-zmq python-numpy python-scipy python-psutil python-rsa gnuplot
RUN apt-get install -y python-mysql.connector python-docutils python-serial python-matplotlib python-pyfits python-lxml
RUN apt-get install -y python-qt4 python-qscintilla2 git

RUN pip install gr && pip install -i http://forge.frm2.tum.de/simple nicos-pyctl --trusted-host forge.frm2.tum.de
RUN cd /usr/src/ && git clone https://forge.frm2.tum.de/review/frm2/nicos/nicos && cd /

RUN mkdir /usr/src/nicos/nicos_pnpi
VOLUME /usr/src/nicos/nicos_pnpi
ENV INSTRUMENT=nicos_pnpi.demo
RUN mv /usr/src/nicos/data /data && ln -s /data /usr/src/nicos/data && ln -s /data /usr/src/nicos/bin/data  
RUN mv /usr/src/nicos/log /log && ln -s /log /usr/src/nicos/log && ln -s /log /usr/src/nicos/bin/log
VOLUME /data
VOLUME /log

CMD /bin/bash
