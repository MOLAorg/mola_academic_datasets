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

## Build

### With ROS 2 (recommended)

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

## License

Each package carries its own license — refer to the `LICENSE` file or the
`<license>` tag in each `package.xml`. Most packages are **GPL-3.0**.

## Contributing

See [CONTRIBUTING.md](https://github.com/MOLAorg/mola/blob/develop/CONTRIBUTING.md)
in the main MOLA repository.
By submitting a pull request you agree to the
[Contributor License Agreement](cla/individual-cla.md).
