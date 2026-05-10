#!/usr/bin/env bash
# Usage: scripts/formatter.sh [--check]
#   (default) Reformat all C/C++ sources in-place with clang-format-14.
#   --check   Dry-run: exit non-zero if any file would be reformatted.

set -euo pipefail

if [ "${1:-}" = "--check" ]; then
  MODE=(--dry-run --Werror)
else
  MODE=(-i)
fi

find \
    kitti_metrics_eval \
    mola_academic_datasets \
    mola_input_euroc_dataset \
    mola_input_kitti360_dataset \
    mola_input_kitti_dataset \
    mola_input_mulran_dataset \
    mola_input_paris_luco_dataset \
    \( -iname "*.h" -o -iname "*.hpp" -o -iname "*.cpp" -o -iname "*.c" \) \
    -not -path "*/3rdparty/*" \
  -print0 | xargs -0 clang-format-14 "${MODE[@]}"
