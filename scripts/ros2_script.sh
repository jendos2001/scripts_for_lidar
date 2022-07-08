#/bin/bash
sleep 5
cd
source ros2_galactic/ros2-linux/setup.bash
ros2 topic echo /slam_out_pose
exec bash
