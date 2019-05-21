FROM ubuntu:latest

# Add some dep
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get dist-upgrade -y && apt-get install -y \
  python3-setuptools \
  autoconf \
  build-essential \
  bzip2 \
  curl \
  gcc \
  git \
  groff \
  lib32stdc++6 \
  lib32z1 \
  lib32z1-dev \
  lib32ncurses5 \
  libc6-dev \
  libgmp-dev \
  libmpc-dev \
  libmpfr-dev \
  libxslt-dev \
  libxml2-dev \
  m4 \
  make \
  ncurses-dev \
  ocaml \
  openssh-client \
  pkg-config \
  rsync \
  software-properties-common \
  unzip \
  wget \
  zip \
  zlib1g-dev \
  cmake \
  pyqt5-dev-tools \
  python3-pip \
  python3-dev \
  libffi-dev \
  libssl-dev \
  xvfb \
  --no-install-recommends

RUN pip3 install ipython lxml

COPY . /app

CMD ["make", "qt5py3"]

ENTRYPOINT [ "python3", "./app/labelImg.py" ]
