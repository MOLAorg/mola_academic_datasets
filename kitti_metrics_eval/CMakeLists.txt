# ------------------------------------------------------------------------------
#        A Modular Optimization framework for Localization and mApping
#                               (MOLA)
#
# Copyright (C) 2018-2026, Jose Luis Blanco-Claraco, contributors (AUTHORS.md)
# All rights reserved.
# See LICENSE file
# ------------------------------------------------------------------------------

# Minimum CMake vesion: limited by CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS
cmake_minimum_required(VERSION 3.22...3.31)  # Ubuntu 22.04+

# Tell CMake we'll use C++ for use in its tests/flags
project(kitti_metrics_eval LANGUAGES CXX)

# MOLA CMake scripts: "mola_xxx()"
find_package(mola_common REQUIRED)

# find dependencies:
find_package(mrpt_math REQUIRED) # for MRPT Eigen utilities
find_package(mrpt_poses REQUIRED)
find_package(CLI11 REQUIRED)
find_package(Eigen3 REQUIRED NO_MODULE)

# ----------------------
# define app target:
mola_add_executable(
  TARGET  kitti-metrics-eval
  SOURCES apps/kitti-metrics-eval.cpp
  LINK_LIBRARIES
    CLI11::CLI11
    mrpt::mrpt_poses
    mrpt::mrpt_math
    Eigen3::Eigen
)

# Silent tons of warnings from kitti-eval original code:
if(CMAKE_COMPILER_IS_GNUCXX)
    target_compile_options(kitti-metrics-eval PRIVATE "-Wno-unused-result" "-Wno-shadow" "-Wno-sign-compare")
endif()

# Silent cmake warnings:
set(unused ${BUILD_TESTING})
unset(unused)
