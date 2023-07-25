This script searches through all is a directory, finds similar prefixes, and then partitions them by the same prefixes into separate sub-folders

Before running the script, make sure to change the variable below to the path where the files are in your local machine 
filesPath=<path-to-files-directory-here>
Example: 
 ```/usr/local/someone/files ```

Then, we can run the script by executing it from the terminal using
Example:
```sh sort-language-files.sh```

The logical steps of the script:

1. Get a list of languages from the files:
# -> List all files in the directory
#     -> Get the file names
#         -> Cut out the numbering and only get the language names
#             -> Cut out the duplicate values and get unique language names
#                 -> Cut out the header line to end up with a list of languages
Then, input the language names into a variable, languageList


2. Loop through languages one by one, sorting each file in its language directory,
#  -> We create the directory if it does not exist
#     -> We move each file from the top level directory to each language's directory
