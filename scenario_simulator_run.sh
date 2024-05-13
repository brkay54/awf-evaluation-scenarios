#!/bin/bash
# This script launches a ROS 2 scenario using the given file path

# Check if an argument was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <path/to/scenario_file>"
    exit 1
fi

SCENARIO_PATH="$1"

echo "Debug: SCENARIO_PATH set to $SCENARIO_PATH"

# Debugging: Check if .bashrc and setup.bash can be sourced properly
echo "Debug: Sourcing ~/.bashrc"
source ~/.bashrc
echo "Debug: Sourcing /home/berkay/projects/autoware/install/setup.bash"
source /home/berkay/projects/autoware/install/setup.bash

# Launch command in a new gnome-terminal
gnome-terminal -- /bin/bash -c "echo 'Starting ROS 2 Scenario...' && source ~/.bashrc && source /home/berkay/projects/autoware/install/setup.bash && ros2 launch scenario_test_runner scenario_test_runner.launch.py architecture_type:=awf/universe record:=false scenario:='${SCENARIO_PATH}' sensor_model:=sample_sensor_kit vehicle_model:=sample_vehicle; exec bash"

