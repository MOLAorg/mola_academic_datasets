<h1 align="center">
  MOLA Academic Datasets
  <br/>
  <sub>Input modules for well-known academic SLAM/odometry datasets</sub>
</h1>

<p align="center">
  <a href="https://docs.mola-slam.org/latest/">
    <img alt="Docs" src="https://img.shields.io/badge/docs-latest-brightgreen.svg?style=flat-square" />
  </a>
  <a href="https://github.com/MOLAorg/mola_academic_datasets/actions/workflows/build-ros.yml">
    <img alt="CI ROS" src="https://github.com/MOLAorg/mola_academic_datasets/actions/workflows/build-ros.yml/badge.svg?style=flat-square" />
  </a>
  <a href="https://github.com/MOLAorg/mola_academic_datasets/actions/workflows/check-clang-format.yml">
    <img alt="CI Check clang-format" src="https://github.com/MOLAorg/mola_academic_datasets/actions/workflows/check-clang-format.yml/badge.svg?style=flat-square" />
  </a>
  <a href="https://github.com/MOLAorg/mola/blob/develop/LICENSE">
    <img alt="License" src="https://img.shields.io/badge/license-GPL--3.0-blue?style=flat-square" />
  </a>
</p>

<p align="center">
  ROS 2 / C++ packages providing <b>MOLA</b> <code>RawDataSource</code> interfaces for
  widely-used academic robotics datasets.
</p>

<p align="center">
  <a href="https://docs.mola-slam.org/latest/"><b>Documentation</b></a> &nbsp;|&nbsp;
  <a href="https://github.com/MOLAorg/mola"><b>MOLA core repo</b></a>
</p>

---

## Packages

| Package | Dataset |
|---------|---------|
| [`mola_input_euroc_dataset`](mola_input_euroc_dataset/) | [EuRoC MAV](https://rpg.ifi.uzh.ch/docs/IJRR17_Burri.pdf) stereo+IMU sequences |
| [`mola_input_kitti_dataset`](mola_input_kitti_dataset/) | [KITTI](https://www.cvlibs.net/datasets/kitti/) odometry/SLAM benchmark |
| [`mola_input_kitti360_dataset`](mola_input_kitti360_dataset/) | [KITTI-360](https://www.cvlibs.net/datasets/kitti-360/) panoramic driving dataset |
| [`mola_input_mulran_dataset`](mola_input_mulran_dataset/) | [MulRan](https://sites.google.com/view/mulran-pr/home) urban LiDAR sequences |
| [`mola_input_paris_luco_dataset`](mola_input_paris_luco_dataset/) | [Paris-Luco](https://github.com/CLoSER-Lab/paris-luco) outdoor LiDAR dataset |
| [`kitti_metrics_eval`](kitti_metrics_eval/) | KITTI benchmark evaluation tools |

All packages implement the `mola_kernel::RawDataSourceBase` interface and are
plug-and-play with any MOLA pipeline.

| Distro | Build dev | Release |
| --- | --- | --- |
| ROS 2 Humble (u22.04) | [![Build Status](https://build.ros2.org/job/Hdev__mola_academic_datasets__ubuntu_jammy_amd64/badge/icon)](https://build.ros2.org/job/Hdev__mola_academic_datasets__ubuntu_jammy_amd64/) | [![Version](https://img.shields.io/ros/v/humble/mola_academic_datasets)](https://index.ros.org/?search_packages=true&pkgs=mola_academic_datasets) |
| ROS 2 Jazzy (u24.04) | [![Build Status](https://build.ros2.org/job/Jdev__mola_academic_datasets__ubuntu_noble_amd64/badge/icon)](https://build.ros2.org/job/Jdev__mola_academic_datasets__ubuntu_noble_amd64/) | [![Version](https://img.shields.io/ros/v/jazzy/mola_academic_datasets)](https://index.ros.org/?search_packages=true&pkgs=mola_academic_datasets) |
| ROS 2 Kilted (u24.04) | [![Build Status](https://build.ros2.org/job/Kdev__mola_academic_datasets__ubuntu_noble_amd64/badge/icon)](https://build.ros2.org/job/Kdev__mola_academic_datasets__ubuntu_noble_amd64/) | [![Version](https://img.shields.io/ros/v/kilted/mola_academic_datasets)](https://index.ros.org/?search_packages=true&pkgs=mola_academic_datasets) |
| ROS 2 Lyrical (u26.04) | [![Build Status](https://build.ros2.org/job/Ldev__mola_academic_datasets__ubuntu_resolute_amd64/badge/icon)](https://build.ros2.org/job/Ldev__mola_academic_datasets__ubuntu_resolute_amd64/) | [![Version](https://img.shields.io/ros/v/lyrical/mola_academic_datasets)](https://index.ros.org/?search_packages=true&pkgs=mola_academic_datasets) |
| ROS 2 Rolling (u26.04) | [![Build Status](https://build.ros2.org/job/Rdev__mola_academic_datasets__ubuntu_resolute_amd64/badge/icon)](https://build.ros2.org/job/Rdev__mola_academic_datasets__ubuntu_resolute_amd64/) | [![Version](https://img.shields.io/ros/v/rolling/mola_academic_datasets)](https://index.ros.org/?search_packages=true&pkgs=mola_academic_datasets) |


## Installation (recommended)

```bash
sudo apt install ros-$ROS_DISTRO-mola-academic-datasets
```

And see also the general [installation instructions](https://docs.mola-slam.org/latest/#installing) for MOLA.

## Build

### With ROS 2

Installing from apt is strongly recommended, but if you want to build from sources:

```bash
cd ~/ros2_ws/src
git clone https://github.com/MOLAorg/mola_academic_datasets.git
cd ..
rosdep install --from-paths src --ignore-src -r -y
colcon build --symlink-install
```

### Standalone (CMake)

```bash
git clone https://github.com/MOLAorg/mola_academic_datasets.git
cmake -B build -DCMAKE_BUILD_TYPE=RelWithDebInfo
cmake --build build
```

## Dependencies

- [MOLA core](https://github.com/MOLAorg/mola) (`mola_kernel`, `mola_yaml`, etc.)
- [MRPT](https://github.com/MRPT/mrpt) ≥ 2.1.0
- ROS 2 Humble / Jazzy / Rolling (optional, for ROS 2 integration)

## Individual package build status

Note: Rows within each cell are for ``amd64`` and ``arm64`` architectures.

| Package | ROS 2 Humble <br/> BinBuild |  ROS 2 Jazzy <br/> BinBuild |  ROS 2 Lyrical <br/> BinBuild |  ROS 2 Rolling <br/> BinBuild |
| --- | --- | --- | --- | --- |
| kitti_metrics_eval | [![Build Status](https://build.ros2.org/job/Hbin_uJ64__kitti_metrics_eval__ubuntu_jammy_amd64__binary/badge/icon)](https://build.ros2.org/job/Hbin_uJ64__kitti_metrics_eval__ubuntu_jammy_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Hbin_ujv8_uJv8__kitti_metrics_eval__ubuntu_jammy_arm64__binary/badge/icon)](https://build.ros2.org/job/Hbin_ujv8_uJv8__kitti_metrics_eval__ubuntu_jammy_arm64__binary/)  | [![Build Status](https://build.ros2.org/job/Jbin_uN64__kitti_metrics_eval__ubuntu_noble_amd64__binary/badge/icon)](https://build.ros2.org/job/Jbin_uN64__kitti_metrics_eval__ubuntu_noble_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Jbin_unv8_uNv8__kitti_metrics_eval__ubuntu_noble_arm64__binary/badge/icon)](https://build.ros2.org/job/Jbin_unv8_uNv8__kitti_metrics_eval__ubuntu_noble_arm64__binary/)  | [![Build Status](https://build.ros2.org/job/Lbin_uR64__kitti_metrics_eval__ubuntu_resolute_amd64__binary/badge/icon)](https://build.ros2.org/job/Lbin_uR64__kitti_metrics_eval__ubuntu_resolute_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Lbin_armv8_uRv8__kitti_metrics_eval__ubuntu_resolute_arm64__binary/badge/icon)](https://build.ros2.org/job/Lbin_armv8_uRv8__kitti_metrics_eval__ubuntu_resolute_arm64__binary/)  | [![Build Status](https://build.ros2.org/job/Rbin_uR64__kitti_metrics_eval__ubuntu_resolute_amd64__binary/badge/icon)](https://build.ros2.org/job/Rbin_uR64__kitti_metrics_eval__ubuntu_resolute_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Rbin_unv8_uRv8__kitti_metrics_eval__ubuntu_resolute_arm64__binary/badge/icon)](https://build.ros2.org/job/Rbin_unv8_uRv8__kitti_metrics_eval__ubuntu_resolute_arm64__binary/)  | 
| mola_academic_datasets | [![Build Status](https://build.ros2.org/job/Hbin_uJ64__mola_academic_datasets__ubuntu_jammy_amd64__binary/badge/icon)](https://build.ros2.org/job/Hbin_uJ64__mola_academic_datasets__ubuntu_jammy_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Hbin_ujv8_uJv8__mola_academic_datasets__ubuntu_jammy_arm64__binary/badge/icon)](https://build.ros2.org/job/Hbin_ujv8_uJv8__mola_academic_datasets__ubuntu_jammy_arm64__binary/)  | [![Build Status](https://build.ros2.org/job/Jbin_uN64__mola_academic_datasets__ubuntu_noble_amd64__binary/badge/icon)](https://build.ros2.org/job/Jbin_uN64__mola_academic_datasets__ubuntu_noble_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Jbin_unv8_uNv8__mola_academic_datasets__ubuntu_noble_arm64__binary/badge/icon)](https://build.ros2.org/job/Jbin_unv8_uNv8__mola_academic_datasets__ubuntu_noble_arm64__binary/)  | [![Build Status](https://build.ros2.org/job/Lbin_uR64__mola_academic_datasets__ubuntu_resolute_amd64__binary/badge/icon)](https://build.ros2.org/job/Lbin_uR64__mola_academic_datasets__ubuntu_resolute_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Lbin_armv8_uRv8__mola_academic_datasets__ubuntu_resolute_arm64__binary/badge/icon)](https://build.ros2.org/job/Lbin_armv8_uRv8__mola_academic_datasets__ubuntu_resolute_arm64__binary/)  | [![Build Status](https://build.ros2.org/job/Rbin_uR64__mola_academic_datasets__ubuntu_resolute_amd64__binary/badge/icon)](https://build.ros2.org/job/Rbin_uR64__mola_academic_datasets__ubuntu_resolute_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Rbin_unv8_uRv8__mola_academic_datasets__ubuntu_resolute_arm64__binary/badge/icon)](https://build.ros2.org/job/Rbin_unv8_uRv8__mola_academic_datasets__ubuntu_resolute_arm64__binary/)  | 
| mola_input_euroc_dataset | [![Build Status](https://build.ros2.org/job/Hbin_uJ64__mola_input_euroc_dataset__ubuntu_jammy_amd64__binary/badge/icon)](https://build.ros2.org/job/Hbin_uJ64__mola_input_euroc_dataset__ubuntu_jammy_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Hbin_ujv8_uJv8__mola_input_euroc_dataset__ubuntu_jammy_arm64__binary/badge/icon)](https://build.ros2.org/job/Hbin_ujv8_uJv8__mola_input_euroc_dataset__ubuntu_jammy_arm64__binary/)  | [![Build Status](https://build.ros2.org/job/Jbin_uN64__mola_input_euroc_dataset__ubuntu_noble_amd64__binary/badge/icon)](https://build.ros2.org/job/Jbin_uN64__mola_input_euroc_dataset__ubuntu_noble_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Jbin_unv8_uNv8__mola_input_euroc_dataset__ubuntu_noble_arm64__binary/badge/icon)](https://build.ros2.org/job/Jbin_unv8_uNv8__mola_input_euroc_dataset__ubuntu_noble_arm64__binary/)  | [![Build Status](https://build.ros2.org/job/Lbin_uR64__mola_input_euroc_dataset__ubuntu_resolute_amd64__binary/badge/icon)](https://build.ros2.org/job/Lbin_uR64__mola_input_euroc_dataset__ubuntu_resolute_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Lbin_armv8_uRv8__mola_input_euroc_dataset__ubuntu_resolute_arm64__binary/badge/icon)](https://build.ros2.org/job/Lbin_armv8_uRv8__mola_input_euroc_dataset__ubuntu_resolute_arm64__binary/)  | [![Build Status](https://build.ros2.org/job/Rbin_uR64__mola_input_euroc_dataset__ubuntu_resolute_amd64__binary/badge/icon)](https://build.ros2.org/job/Rbin_uR64__mola_input_euroc_dataset__ubuntu_resolute_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Rbin_unv8_uRv8__mola_input_euroc_dataset__ubuntu_resolute_arm64__binary/badge/icon)](https://build.ros2.org/job/Rbin_unv8_uRv8__mola_input_euroc_dataset__ubuntu_resolute_arm64__binary/)  | 
| mola_input_kitti360_dataset | [![Build Status](https://build.ros2.org/job/Hbin_uJ64__mola_input_kitti360_dataset__ubuntu_jammy_amd64__binary/badge/icon)](https://build.ros2.org/job/Hbin_uJ64__mola_input_kitti360_dataset__ubuntu_jammy_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Hbin_ujv8_uJv8__mola_input_kitti360_dataset__ubuntu_jammy_arm64__binary/badge/icon)](https://build.ros2.org/job/Hbin_ujv8_uJv8__mola_input_kitti360_dataset__ubuntu_jammy_arm64__binary/)  | [![Build Status](https://build.ros2.org/job/Jbin_uN64__mola_input_kitti360_dataset__ubuntu_noble_amd64__binary/badge/icon)](https://build.ros2.org/job/Jbin_uN64__mola_input_kitti360_dataset__ubuntu_noble_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Jbin_unv8_uNv8__mola_input_kitti360_dataset__ubuntu_noble_arm64__binary/badge/icon)](https://build.ros2.org/job/Jbin_unv8_uNv8__mola_input_kitti360_dataset__ubuntu_noble_arm64__binary/)  | [![Build Status](https://build.ros2.org/job/Lbin_uR64__mola_input_kitti360_dataset__ubuntu_resolute_amd64__binary/badge/icon)](https://build.ros2.org/job/Lbin_uR64__mola_input_kitti360_dataset__ubuntu_resolute_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Lbin_armv8_uRv8__mola_input_kitti360_dataset__ubuntu_resolute_arm64__binary/badge/icon)](https://build.ros2.org/job/Lbin_armv8_uRv8__mola_input_kitti360_dataset__ubuntu_resolute_arm64__binary/)  | [![Build Status](https://build.ros2.org/job/Rbin_uR64__mola_input_kitti360_dataset__ubuntu_resolute_amd64__binary/badge/icon)](https://build.ros2.org/job/Rbin_uR64__mola_input_kitti360_dataset__ubuntu_resolute_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Rbin_unv8_uRv8__mola_input_kitti360_dataset__ubuntu_resolute_arm64__binary/badge/icon)](https://build.ros2.org/job/Rbin_unv8_uRv8__mola_input_kitti360_dataset__ubuntu_resolute_arm64__binary/)  | 
| mola_input_kitti_dataset | [![Build Status](https://build.ros2.org/job/Hbin_uJ64__mola_input_kitti_dataset__ubuntu_jammy_amd64__binary/badge/icon)](https://build.ros2.org/job/Hbin_uJ64__mola_input_kitti_dataset__ubuntu_jammy_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Hbin_ujv8_uJv8__mola_input_kitti_dataset__ubuntu_jammy_arm64__binary/badge/icon)](https://build.ros2.org/job/Hbin_ujv8_uJv8__mola_input_kitti_dataset__ubuntu_jammy_arm64__binary/)  | [![Build Status](https://build.ros2.org/job/Jbin_uN64__mola_input_kitti_dataset__ubuntu_noble_amd64__binary/badge/icon)](https://build.ros2.org/job/Jbin_uN64__mola_input_kitti_dataset__ubuntu_noble_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Jbin_unv8_uNv8__mola_input_kitti_dataset__ubuntu_noble_arm64__binary/badge/icon)](https://build.ros2.org/job/Jbin_unv8_uNv8__mola_input_kitti_dataset__ubuntu_noble_arm64__binary/)  | [![Build Status](https://build.ros2.org/job/Lbin_uR64__mola_input_kitti_dataset__ubuntu_resolute_amd64__binary/badge/icon)](https://build.ros2.org/job/Lbin_uR64__mola_input_kitti_dataset__ubuntu_resolute_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Lbin_armv8_uRv8__mola_input_kitti_dataset__ubuntu_resolute_arm64__binary/badge/icon)](https://build.ros2.org/job/Lbin_armv8_uRv8__mola_input_kitti_dataset__ubuntu_resolute_arm64__binary/)  | [![Build Status](https://build.ros2.org/job/Rbin_uR64__mola_input_kitti_dataset__ubuntu_resolute_amd64__binary/badge/icon)](https://build.ros2.org/job/Rbin_uR64__mola_input_kitti_dataset__ubuntu_resolute_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Rbin_unv8_uRv8__mola_input_kitti_dataset__ubuntu_resolute_arm64__binary/badge/icon)](https://build.ros2.org/job/Rbin_unv8_uRv8__mola_input_kitti_dataset__ubuntu_resolute_arm64__binary/)  | 
| mola_input_mulran_dataset | [![Build Status](https://build.ros2.org/job/Hbin_uJ64__mola_input_mulran_dataset__ubuntu_jammy_amd64__binary/badge/icon)](https://build.ros2.org/job/Hbin_uJ64__mola_input_mulran_dataset__ubuntu_jammy_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Hbin_ujv8_uJv8__mola_input_mulran_dataset__ubuntu_jammy_arm64__binary/badge/icon)](https://build.ros2.org/job/Hbin_ujv8_uJv8__mola_input_mulran_dataset__ubuntu_jammy_arm64__binary/)  | [![Build Status](https://build.ros2.org/job/Jbin_uN64__mola_input_mulran_dataset__ubuntu_noble_amd64__binary/badge/icon)](https://build.ros2.org/job/Jbin_uN64__mola_input_mulran_dataset__ubuntu_noble_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Jbin_unv8_uNv8__mola_input_mulran_dataset__ubuntu_noble_arm64__binary/badge/icon)](https://build.ros2.org/job/Jbin_unv8_uNv8__mola_input_mulran_dataset__ubuntu_noble_arm64__binary/)  | [![Build Status](https://build.ros2.org/job/Lbin_uR64__mola_input_mulran_dataset__ubuntu_resolute_amd64__binary/badge/icon)](https://build.ros2.org/job/Lbin_uR64__mola_input_mulran_dataset__ubuntu_resolute_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Lbin_armv8_uRv8__mola_input_mulran_dataset__ubuntu_resolute_arm64__binary/badge/icon)](https://build.ros2.org/job/Lbin_armv8_uRv8__mola_input_mulran_dataset__ubuntu_resolute_arm64__binary/)  | [![Build Status](https://build.ros2.org/job/Rbin_uR64__mola_input_mulran_dataset__ubuntu_resolute_amd64__binary/badge/icon)](https://build.ros2.org/job/Rbin_uR64__mola_input_mulran_dataset__ubuntu_resolute_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Rbin_unv8_uRv8__mola_input_mulran_dataset__ubuntu_resolute_arm64__binary/badge/icon)](https://build.ros2.org/job/Rbin_unv8_uRv8__mola_input_mulran_dataset__ubuntu_resolute_arm64__binary/)  | 
| mola_input_paris_luco_dataset | [![Build Status](https://build.ros2.org/job/Hbin_uJ64__mola_input_paris_luco_dataset__ubuntu_jammy_amd64__binary/badge/icon)](https://build.ros2.org/job/Hbin_uJ64__mola_input_paris_luco_dataset__ubuntu_jammy_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Hbin_ujv8_uJv8__mola_input_paris_luco_dataset__ubuntu_jammy_arm64__binary/badge/icon)](https://build.ros2.org/job/Hbin_ujv8_uJv8__mola_input_paris_luco_dataset__ubuntu_jammy_arm64__binary/)  | [![Build Status](https://build.ros2.org/job/Jbin_uN64__mola_input_paris_luco_dataset__ubuntu_noble_amd64__binary/badge/icon)](https://build.ros2.org/job/Jbin_uN64__mola_input_paris_luco_dataset__ubuntu_noble_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Jbin_unv8_uNv8__mola_input_paris_luco_dataset__ubuntu_noble_arm64__binary/badge/icon)](https://build.ros2.org/job/Jbin_unv8_uNv8__mola_input_paris_luco_dataset__ubuntu_noble_arm64__binary/)  | [![Build Status](https://build.ros2.org/job/Lbin_uR64__mola_input_paris_luco_dataset__ubuntu_resolute_amd64__binary/badge/icon)](https://build.ros2.org/job/Lbin_uR64__mola_input_paris_luco_dataset__ubuntu_resolute_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Lbin_armv8_uRv8__mola_input_paris_luco_dataset__ubuntu_resolute_arm64__binary/badge/icon)](https://build.ros2.org/job/Lbin_armv8_uRv8__mola_input_paris_luco_dataset__ubuntu_resolute_arm64__binary/)  | [![Build Status](https://build.ros2.org/job/Rbin_uR64__mola_input_paris_luco_dataset__ubuntu_resolute_amd64__binary/badge/icon)](https://build.ros2.org/job/Rbin_uR64__mola_input_paris_luco_dataset__ubuntu_resolute_amd64__binary/) <br> [![Build Status](https://build.ros2.org/job/Rbin_unv8_uRv8__mola_input_paris_luco_dataset__ubuntu_resolute_arm64__binary/badge/icon)](https://build.ros2.org/job/Rbin_unv8_uRv8__mola_input_paris_luco_dataset__ubuntu_resolute_arm64__binary/)  | 


## License

Each package carries its own license — refer to the `LICENSE` file or the
`<license>` tag in each `package.xml`. Most packages are **GPL-3.0**.

## Contributing

See [CONTRIBUTING.md](https://github.com/MOLAorg/mola/blob/develop/CONTRIBUTING.md)
in the main MOLA repository.

By submitting a pull request you agree to the
[Contributor License Agreement](cla/individual-cla.md).
