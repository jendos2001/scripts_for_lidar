#/bin/bash
path=$PWD
cd ros11
source ./devel/setup.bash
gnome-terminal --tab --command="bash -c 'source $path/scripts/start_roscore_script.sh'"
gnome-terminal --tab --command="bash -c 'source $path/scripts/rplidar_script.sh'"
gnome-terminal --tab --command="bash -c 'source $path/scripts/hector_slam_script.sh'"
gnome-terminal --tab --command="bash -c 'source $path/scripts/bridge_script.sh'"
gnome-terminal --tab --command="bash -c 'source $path/scripts/ros2_script.sh'"
sleep 6
cd
source ros2_galactic/ros2-linux/setup.bash
ros2 run rviz2 rviz2

