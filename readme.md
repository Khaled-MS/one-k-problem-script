This script searches through all is a directory, finds similar prefixes, and then partitions them by the same prefixes into separate sub-folders

Before running the script, make sure to change the variable below to the path where the files are in your local machine 

```filesPath=<path-to-files-directory-here>```

Example:

 ```/usr/local/someone/files ```

Then, we can run the script by executing it from the terminal.

Example:
```sh sort-language-files.sh```

The logical steps of the script:

#Get a list of languages from the files:
1. List all files in the directory
2. Get the file names
3. Cut out the numbering and only get the language names
4. Cut out the duplicate values and get unique language names
5. Cut out the header line to end up with a list of languages
6. Then, input the language names into a variable, languageList


#Loop through languages one by one, sorting each file in its language directory,
1. We create the directory if it does not exist
2. We move each file from the top level directory to each language's directory
