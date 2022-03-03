#!/bin/bash

eval "arr=(${ADDITIONAL_PARAMS})"
/app/bin/cx scan --help
exitCode=$?

echo "Program exits with code: " $exitCode
if [ $exitCode -eq 0 ]
then
  echo "Scan completed"
else
  echo "Scan Failed"
  exit $exitCode
fi
