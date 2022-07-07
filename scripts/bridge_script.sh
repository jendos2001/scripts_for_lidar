#/bin/bash
cd
sudo apt-get install -y ros-foxy-ros1-bridge
source /opt/ros/noetic/setup.bash
source ros2_galactic/ros2-linux/setup.bash
ros2 run ros1_bridge dynamic_bridge --bridge-all-topics
