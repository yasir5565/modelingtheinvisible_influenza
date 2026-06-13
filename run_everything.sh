#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"

bash "$ROOT_DIR/run_challenge1_all_releases.sh"
bash "$ROOT_DIR/run_challenge2_all_releases.sh"

echo
echo "Challenge 1 and Challenge 2 all-release reproduction completed."
