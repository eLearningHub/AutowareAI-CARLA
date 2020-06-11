#!/bin/bash
export CARLA_MAPS_PATH=/opt/carla/HDMaps/
export PYTHONPATH=$PYTHONPATH:/opt/carla/PythonAPI/carla/dist/carla-0.9.8-py2.7-linux-x86_64.egg
source /opt/carla-ros-bridge/$ROS_DISTRO/setup.bash
source /opt/AutowareAI/setup.bash
roslaunch carla_autoware_bridge carla_autoware_bridge_with_manual_control.launch