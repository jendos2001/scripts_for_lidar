#/bin/bash
path=$PWD
mkdir ros1 && cd ros1
mkdir src && cd src
git clone https://github.com/tu-darmstadt-ros-pkg/hector_slam
git clone https://github.com/Slamtec/rplidar_ros
git clone https://github.com/jendos2001/my_hector_mapping
cd ..
source /opt/ros/noetic/setup.bash
catkin_make
chmod a+rw /dev/ttyUSB0
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

