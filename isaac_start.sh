#!/usr/bin/env bash

ISAAC_ROOT=/home/udit-2/isaac-sim
ROS_LIB=$ISAAC_ROOT/exts/isaacsim.ros2.bridge/humble/lib

gnome-terminal -- bash -c "
env -i \
HOME=$HOME \
USER=$USER \
PATH=/usr/bin:/bin \
DISPLAY=$DISPLAY \
XAUTHORITY=$XAUTHORITY \
ROS_DISTRO=humble \
RMW_IMPLEMENTATION=rmw_fastrtps_cpp \
ISAACSIM_USE_INTERNAL_ROS=1 \
LD_LIBRARY_PATH=$ROS_LIB \
PYTHONPATH= \
$ISAAC_ROOT/isaac-sim.sh 2>&1 | tee isaac_sim.log
exec bash
"

