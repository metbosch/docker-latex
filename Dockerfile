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
RUN cd /usr/bin && ln -sf python3 python
CMD ["bash"]
