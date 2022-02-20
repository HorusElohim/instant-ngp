#! /bin/bash

sudo apt-get install \
    build-essential \
    libboost-program-options-dev \
    libboost-filesystem-dev \
    libboost-graph-dev \
    libboost-system-dev \
    libboost-test-dev \
    libeigen3-dev \
    libsuitesparse-dev \
    libfreeimage-dev \
    libgoogle-glog-dev \
    libgflags-dev \
    libglew-dev \
    qtbase5-dev \
    libqt5opengl5-dev \
    libcgal-dev \
    libatlas-base-dev \
    libsuitesparse-dev

################
# Ceres-solver #
################

#cd /tmp
#git clone https://ceres-solver.googlesource.com/ceres-solver
#cd ceres-solver
#git checkout $(git describe --tags) # Checkout the latest release
#mkdir build
#cd build
#cmake .. -DBUILD_TESTING=OFF -DBUILD_EXAMPLES=OFF
#make -j
#sudo make install
#cd -

##########
# Colmap #
##########
cd /tmp
git clone https://github.com/colmap/colmap.git
cd colmap
git checkout dev
mkdir build
cd build
cmake ..
make -j 16
sudo make install
cd -

