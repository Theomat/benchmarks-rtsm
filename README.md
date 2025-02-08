# benchmarks-rtsm

A collection of benchmarks for the RTSM problem.

## Structure

```
.
|_ benchmarks           Contains all the benchmark files
|_ generators           Contains all the files to generate the benchmarks
|_ unique-benchmarks    Contains the unique benchmarks that cannot be generated
```

## Format

The format is a simple CSV file with some conventions, if costs are given then this is a concatenation of two CSV files.

### Cost

Costs if given, assign a cost to each test.
The csv contains the following two columns ``test`` (str) and ``cost`` (float).
It must be at the beginning of the file and end with a line with 80 ``=``.

### Performance data

Performance data assigns to a pair ``(test, variant)`` a set of performances.
Only two columns are mandatory ``test`` (str) and ``variant`` (str), you can add as many other (float) columns as you want, they will be considered performance metrics and all will be considered during the solution.
