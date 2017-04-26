#! /bin/bash

# Download and extract AMUSEa
export GITHASH=c086de2efa16724899d372e52cffbfa9d6f72621
wget https://github.com/rieder/amuse/archive/${GITHASH}.zip && \
  unzip ${GITHASH}.zip && \
  mv amuse-${GITHASH} amuse && \
  rm ${GITHASH}.zip 

export SCRIPT_DIR="${PWD}"
export AMUSE_DIR="${PWD}/amuse"

# Build AMUSE
cd ${AMUSE_DIR}
./configure && \
make framework && \
DOWNLOAD_CODES=1 make rebound.code

cd ${SCRIPT_DIR}
