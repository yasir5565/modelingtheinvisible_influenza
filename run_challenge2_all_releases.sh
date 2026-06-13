#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"

for rel in 1 2 3 4; do
  Rscript "$ROOT_DIR/code/challenge2_release${rel}_model.R" \
    --data "$ROOT_DIR/data/challenge2_release${rel}.csv" \
    --output-dir "$ROOT_DIR/outputs/challenge2_release${rel}_outputs"
done

echo
echo "Challenge 2 all releases written to:"
echo "$ROOT_DIR/outputs/challenge2_release1_outputs"
echo "$ROOT_DIR/outputs/challenge2_release2_outputs"
echo "$ROOT_DIR/outputs/challenge2_release3_outputs"
echo "$ROOT_DIR/outputs/challenge2_release4_outputs"
