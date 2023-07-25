#!/bin/bash

## Before running the script, make sure to change the variable below to the path where the files are in your local machine 
# -> Example: /usr/local/someone/files 
filesPath=<path-to-files-directory-here>

## Get a list of languages from the files:
# -> List all files in the directory
#     -> Get the file names
#         -> Cut out the numbering and only get the language names
#             -> Cut out the duplicate values and get unique language names
#                 -> Cut out the header line to end up with a list of languages
# Then, input the language names into a variable, languageList

languageList=$(ls -l $filesPath | awk '{print $NF}' | awk -F "-[1-9]" '{print $1}' | uniq | sed '1d')


## Loop through languages one by one, sorting each file in its language directory,
#  -> We create the directory if it does not exist
#     -> We move each file from the top level directory to each language's directory

cd $filesPath

for language in $languageList
do
  echo "Sorting $language language files..."

  if [ ! -d "$language" ]; then
    mkdir ./$language
fi

  mv ./"${language}"-* ./$language/

done

echo "Done."
