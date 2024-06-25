#!/bin/bash

echo "Executing Test.sh"

# Remove existng database file
echo "Deleting File if exist"
rm -f "C:/Users/farrukh/Documents/made-template/data/Carbon_emission.sqlite"


# Validate the output file(s)
if [ -f ".C:/Users/farrukh/Documents/made-template/data/Carbon_emission.sqlite" ]; then
  echo "Output file(s) exist."
else
  echo "Output file(s) not found."
fi

# Running the pipeline
echo "Running the pipeline..."
bash /c/Users/farrukh/Documents/made-template/project/pipeline.sh

# Check the return value of pipeline.sh
if [ $? -ne 0 ]; then
    echo "Error: Pipeline not working."
fi



read -p "Press any key to continue... " -n1 -s
exit 0