# Team 5 Reproducible Forecast Package

This package is the final release-ready reproducible submission for Team 5. Each release is represented by one release-specific R script, one input data file, and one corresponding reference output folder.

## Package Structure

- `code/`
  - `challenge1_release1_model.R`
  - `challenge1_release2_model.R`
  - `challenge1_release3_model.R`
  - `challenge1_release4_model.R`
  - `challenge2_release1_model.R`
  - `challenge2_release2_model.R`
  - `challenge2_release3_model.R`
  - `challenge2_release4_model.R`
- `data/`
  - `challenge1_release1.csv` through `challenge1_release4.csv`
  - `challenge2_release1.csv` through `challenge2_release4.csv`
- `outputs/`
  - `challenge1_release1_outputs` through `challenge1_release4_outputs`
  - `challenge2_release1_outputs` through `challenge2_release4_outputs`
- `run_challenge1_all_releases.sh`
- `run_challenge2_all_releases.sh`
- `run_everything.sh`

## Challenge Mapping

`Challenge 1` corresponds to the four day-one releases:

- `challenge1_release1.csv`: first release, 10 observed weeks
- `challenge1_release2.csv`: second release, 15 observed weeks
- `challenge1_release3.csv`: third release, 20 observed weeks
- `challenge1_release4.csv`: fourth release, 25 observed weeks

`Challenge 2` corresponds to the four day-two releases:

- `challenge2_release1.csv`: first release, 8 observed weeks
- `challenge2_release2.csv`: second release, 12 observed weeks
- `challenge2_release3.csv`: third release, 16 observed weeks
- `challenge2_release4.csv`: fourth release, 20 observed weeks

For `challenge2_release1.csv`, `week = 0` has been removed from the package to match the final submission-format convention used in the rest of the project.

## How To Reproduce

Before running the scripts, make sure the machine has:

- R and the required R packages listed below
- CmdStan installed for use with `cmdstanr`
- A working C++ toolchain for Stan model compilation

Run all Challenge 1 releases:

```bash
bash run_challenge1_all_releases.sh
```

Run all Challenge 2 releases:

```bash
bash run_challenge2_all_releases.sh
```

Run everything:

```bash
bash run_everything.sh
```

The provided `outputs/..._outputs` folders are the reference outputs included in this submission package.

## Modeling Summary

Each release script uses the same broad six-model framework:

- Seasonal Stan model
- ARIMA time-series model
- LOESS local smoother
- Piecewise Stan model
- Short-term statistical trend model
- Segmented SIR-style mechanistic model

The final forecast is built from recent observed-window performance, shape diagnostics, and consistency checks between hospitalization trajectories and time-varying reproduction estimates. Release-specific scripts differ mainly in their default data file, output folder, and observed-week configuration.

## Requirements

Required R packages:

- `cmdstanr`
- `posterior`
- `dplyr`
- `readr`
- `ggplot2`
- `patchwork`
- `tibble`
- `forecast`
