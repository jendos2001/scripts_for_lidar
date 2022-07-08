#/bin/bash
sleep 3
cd ros1
source /opt/ros/noetic/setup.bash
source ./devel/setup.bash
cd src
roslaunch my_hector_mapping my_launch.launch
exec bash
