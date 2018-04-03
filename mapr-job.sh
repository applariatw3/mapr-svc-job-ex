#!/bin/bash
#version date - 4/3/2018
#version id - 1
#mapr job base script

echo "Running MAPR cluster jobs"

#Run common job actions ( maprcli, ...)

#Run additional jobs script from code artifact
source /code/custom-jobs.sh

echo "Completed running MAPR cluster jobs, exiting..."

exit 0