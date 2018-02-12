#!/bin/bash

# Add Docker Repository
apt-get update

# Install sudo
apt-get install -y sudo vim libltdl7

# Remove apt cache
rm -rf /var/lib/apt/lists/*

