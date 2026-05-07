# MOLA Academic Datasets — AI Agent Context Guide

## Project Overview

This repository contains **MOLA** `RawDataSource` modules for well-known academic
robotics datasets (KITTI, KITTI-360, EuRoC, MulRan, Paris-Luco) plus KITTI
benchmark evaluation tools.

These packages were split from the main [MOLAorg/mola](https://github.com/MOLAorg/mola)
repository to keep dataset-specific I/O code separate from the MOLA core.

**Maintainer**: Jose Luis Blanco-Claraco  
**License**: GPL-3.0  
**Docs**: https://docs.mola-slam.org/latest/

---

## Architecture

Each package provides a `RawDataSourceBase` plugin that:
1. Reads a dataset from disk in its native format
2. Publishes `mrpt::obs::*` observations into the MOLA pipeline
3. Supports offline playback (implements `OfflineDatasetSource`)

All dataset readers are configured via YAML (variable substitution via `mola_yaml`).

---

## Directory Structure

```
mola_input_euroc_dataset/      # EuRoC MAV stereo+IMU dataset reader
mola_input_kitti_dataset/      # KITTI odometry/SLAM dataset reader
mola_input_kitti360_dataset/   # KITTI-360 panoramic dataset reader
mola_input_mulran_dataset/     # MulRan urban LiDAR dataset reader
mola_input_paris_luco_dataset/ # Paris-Luco outdoor LiDAR dataset reader
kitti_metrics_eval/            # KITTI benchmark evaluation CLI tools
```

---

## Key Packages

### `mola_input_kitti_dataset`
- Reads KITTI odometry sequences (velodyne, stereo camera, ground-truth poses)
- Key class: `KittiOdometryDataset` in `include/mola_input_kitti_dataset/`
- Supports correction angle for LiDAR calibration

### `mola_input_kitti360_dataset`
- Reads KITTI-360 sequences (panoramic LiDAR, cameras, IMU, GPS)
- Key class: `Kitti360Dataset`

### `mola_input_euroc_dataset`
- Reads EuRoC MAV sequences (stereo camera, IMU)
- Key class: `EurocDataset`

### `mola_input_mulran_dataset`
- Reads MulRan sequences (Ouster LiDAR, GPS/IMU)
- Key class: `MulranDataset`

### `mola_input_paris_luco_dataset`
- Reads Paris-Luco dataset (single outdoor LiDAR sequence)
- Key class: `ParisLucoDataset`

### `kitti_metrics_eval`
- CLI tool for computing KITTI odometry metrics (translation/rotation errors)
- Input: estimated trajectory + ground-truth poses

---

## Build System

- **Build tool**: CMake 3.22+ / Colcon (for ROS 2)
- **C++ standard**: C++17
- **Config**: `colcon_defaults.yaml` (symlink install, RelWithDebInfo)
- **Platforms**: Linux Ubuntu 22.04/24.04, AMD64 and ARM64

---

## Key External Dependencies

| Dependency | Purpose |
|------------|---------|
| **mola_kernel** | `RawDataSourceBase`, `OfflineDatasetSource` interfaces |
| **MRPT** (≥2.1.0) | Observation types, poses, serialization |
| **mola_yaml** | YAML config parsing with variable expansion |

---

## Testing & CI

- **CI**: `.github/workflows/build-ros.yml` — builds on ROS 2 Humble, Jazzy, Rolling
- **Style**: `.clang-format` / `.clang-tidy` enforced in CI

---

## Common Patterns

### Adding a New Dataset Reader
1. Inherit from `mola_kernel::RawDataSourceBase` (and `OfflineDatasetSource` if offline)
2. Override `initialize()`, `spinOnce()`, `datasetEntry()`, `datasetSize()`
3. Register the plugin via CMake macros from `mola_common`
4. Write a YAML config referencing the dataset path and parameters

### YAML Configuration
Dataset path and sequence are set via YAML variables, e.g.:
```yaml
- type: mola_input_kitti_dataset::KittiOdometryDataset
  params:
    base_dir: ${KITTI_BASE_DIR}
    sequence: '00'
```
