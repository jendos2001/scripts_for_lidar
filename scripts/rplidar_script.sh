#/bin/bash
sleep 2
cd ros1
source /opt/ros/noetic/setup.bash
source ./devel/setup.bash
cd src
roslaunch rplidar_ros rplidar.launch
exec bash
