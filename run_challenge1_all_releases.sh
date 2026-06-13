#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"

for rel in 1 2 3 4; do
  Rscript "$ROOT_DIR/code/challenge1_release${rel}_model.R" \
    --data "$ROOT_DIR/data/challenge1_release${rel}.csv" \
    --output-dir "$ROOT_DIR/outputs/challenge1_release${rel}_outputs"
done

echo
echo "Challenge 1 all releases written to:"
echo "$ROOT_DIR/outputs/challenge1_release1_outputs"
echo "$ROOT_DIR/outputs/challenge1_release2_outputs"
echo "$ROOT_DIR/outputs/challenge1_release3_outputs"
echo "$ROOT_DIR/outputs/challenge1_release4_outputs"
