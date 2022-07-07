#/bin/bash
mkdir ros1 && cd ros1
mkdir src && cd src
git clone https://github.com/tu-darmstadt-ros-pkg/hector_slam
git clone https://github.com/Slamtec/rplidar_ros
git clone https://github.com/jendos2001/my_hector_mapping
cd ..
source /opt/ros/noetic/setup.bash
catkin_make
