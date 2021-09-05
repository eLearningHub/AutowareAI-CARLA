# AutowareAI and CARLA
This is a demostration of the integration of [AutowareAI](https://gitlab.com/autowarefoundation/autoware.ai) and the [CARLA](https://carla.org/) simulator. 

# Installing requirements
* This demo works on most Linux distributions with CUDA installed (you need an NVIDIA graphics card).
* Install NVIDIA drivers and verify the drivers with: `nvidia-smi`
* This demo requires Docker, NVIDIA Container Toolkit, and [ADE](https://www.apex.ai/post/ade-ensuring-that-all-developers-in-a-project-have-a-common-consistent-development-environment) to be installed. 
* For a local installation of the requirements run: `bash install_dependencies.sh` after you have cloned this repository. (see [Getting Started](#getting-started) for more information)
* To remove the installed binaries and the docker images run: `bash remove_dependencies.sh`

# Getting Started
* Create your workspace directory (you can choose your own name or use an existing folder): `mkdir adehome`
* Go to your ADE home directory: `cd adehome`
* Create an empty .adehome file: `touch .adehome`
* Clone this repository: `git clone https://github.com/eLearningHub/AutowareAI-CARLA.git`
* Enter the clone directory: `cd AutowareAI-CARLA`
* Here you can choose to install the dependencies with the `bash install_dependencies.sh` (requires `make` package and root privileges)
* Run ADE: `ade start --enter`
* Inside ADE, go to the clone directory: `cd AutowareAI-CARLA`
* Inside ADE, run Carla: `source run-carla.sh`
* Open another terminal at the ADE home directory and run: `ade enter`
* Inside ADE, run: `cd AutowareAI-CARLA; source launch-autoware.sh`
* Press P for the vehicle to enter into the autonomous mode. Voila!

# References

* [Autoware in CARLA](https://gitlab.com/autowarefoundation/autoware.ai/simulation/-/tree/master/carla_simulator_bridge)
* [CARLA Talks 2020](https://carla.org/2020/06/09/talks_2020/)
* [CARLA Docs](https://carla.readthedocs.io/en/latest/)
* [ROS bridge for CARLA](https://github.com/carla-simulator/ros-bridge)
* [Reinforcement learning and CARLA](https://github.com/Sentdex/Carla-RL)