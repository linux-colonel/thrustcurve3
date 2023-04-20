FROM heroku/heroku:22

RUN apt-get update && apt-get -y install \
    sudo \
    vim

RUN useradd -m --home-dir /home/thrustcurve --shell /bin/bash thrustcurve
RUN echo '%thrustcurve   ALL=(ALL:ALL) NOPASSWD:ALL' > /etc/sudoers.d/thrustcurve

USER thrustcurve
CMD bash -l
