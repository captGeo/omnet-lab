#!/bin/bash
set -e

echo "Updating system..."
sudo apt update -y

echo "Installing dependencies..."
sudo apt install -y build-essential g++ gcc bison flex perl qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools libqt5core5a wget tar

echo "Downloading OMNeT++..."
wget https://github.com/omnetpp/omnetpp/releases/download/omnetpp-6.0.3/omnetpp-6.0.3-src.tgz

echo "Extracting..."
tar xvf omnetpp-6.0.3-src.tgz
cd omnetpp-6.0.3

echo "Configuring..."
source setenv
./configure

echo "Building..."
make -j4

echo "OMNeT++ Install completed!"
