#/bin/bash
cd ros11
source /opt/ros/noetic/setup.bash
source ./devel/setup.bash
cd src
roslaunch rplidar_ros rplidar.launch
