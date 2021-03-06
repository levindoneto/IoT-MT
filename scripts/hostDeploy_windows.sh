#!/bin/bash

# Script for bundling the react components

# Author: Levindo Gabriel Taschetto Neto
# Advisors: Prof. Dr.-Ing. habil. Bernhard Mitschang,
#           M.Sc. Ana Cristina Franco da Silva
#           Dipl.-Inf. Pascal Hirmer
# Requirements:
# # - Node JS (npm) installed

sed -i 's/\r$//' init.sh; # Remove trailing \r character
clear;
echo "_________________________________________________________________________";
echo "Deploying hosting with the use of Firebase (this might take some minutes)";
echo "The platform will be availabe on https://iot-mt.firebaseapp.com";
echo "_________________________________________________________________________";
echo "Press [CTRL]+[C] to finish the execution";
echo "_________________________________________________________________________";
pushd ../;
npm install -g firebase-tools;
firebase deploy --only hosting;