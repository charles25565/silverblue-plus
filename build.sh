#!/bin/bash

set -ouex pipefail

### Setup RPM Fusion

dnf install --nogpgcheck -y \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-42.noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-42.noarch.rpm

### Install H.264

# To avoid getting into even more legal troubles, H.265 (HEVC) isn't included.

dnf install --allowerasing -y x264

### Install some development tools

dnf install -y @development-tools git