# Dockerfile
FROM debian:stable-slim
MAINTAINER metbosch <metbosch@outlook.com>

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
  # make and other basic tools
  make \
  git \
  # Python and matplotlib
  python3 \
  python3-matplotlib \
  python3-pygments \
  python3-pip \
  # Tex stuff
  texlive-full \
  texlive-latex-base \
  texlive-latex-recommended \
  texlive-latex-extra \
  texlive-fonts-recommended \
  texlive-fonts-extra \
  texlive-generic-recommended \
  texlive-generic-extra \
  biber \
  # Others
  inkscape \
  mscgen \
  latexmk
RUN pip3 install brokenaxes
RUN sed -i 's/^.*policy.*coder.*none.*PDF.*//' /etc/ImageMagick-6/policy.xml
RUN cd /usr/bin && ln -sf python3 python
CMD ["bash"]
