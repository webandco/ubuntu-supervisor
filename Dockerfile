FROM ubuntu:16.04
MAINTAINER David Spiola <david(at)webandco.com>

ADD root /
RUN /build.sh

CMD ["bash"]
ENTRYPOINT ["/config/bootstrap.sh"]


