
# Benchmark

This folder contains all the scripts needed to generate the benchmarks.

In each sub-folder, run the ``.sh`` scripts in order to generate the benchmarks automatically.

## ASlib

**Unique benchmarks**: 23

**Generated benchmarks**: 23

**Cost**: Yes

**Multi-metric**: No

This is based on  <https://github.com/coseal/aslib_data> and contains data for automatic configuration.
We filtered out all benchmarks that had less than 8 configurations, then if a benchmark appeared multiple times, we filtered out some of them to avoid redundant data.

## Repair

**Unique benchmarks**: 2

**Generated benchmarks**: 6

**Cost**: No

**Multi-metric**: No

This is based on <https://github.com/ASSERT-KTH/repairbench> and contains LLM performances on automatic program repair.
We produce 3 versions, one up to date, and two with different cut-off dates for LLM publication dates.

## Resist

**Unique benchmarks**: 8

**Generated benchmarks**: 19

**Cost**: Most

**Multi-metric**: Most

This is based on <https://github.com/HelgeS/RESIST_perf_clustering> and contains the evaluation of different software with different configurations on a wide range of inputs.
A plethora of metrics are gathered, since we support multi-metrics, we limit the number of different versions with increased number of metrics are generated.
For example, SQLLite has 15 metrics but we limit to 4 versions: 1, 5, 10 and 15 metrics.
