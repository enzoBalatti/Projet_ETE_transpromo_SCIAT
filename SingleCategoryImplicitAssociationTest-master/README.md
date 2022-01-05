# PsychoPy Single Category Implicit Association Test

## License
Copyright (c) Ian Hussey 2016 (ian.hussey@ugent.be)

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

## Version
0.9 (3/3/2016)

Technically a beta version as I haven't had the code checked indpendently, but I have versions of this code in my own experiments with no issues. 

Written in PsychoPy 1.82.01

## Notes
- You can run either the .psyexp file or the .py file inside PsychoPy. The task was written in version 1.82.01. Other versions may produce unexpected behaviour. The py file should have greater cross platform support; if you run into errors with the .psyexp file use the .py instead.
- The included stimulus file employs pictures as category stimuli and words as attribute stimuli. However, this implimentation can  display any combination of words and/or images for both categories and attributes. To do this, edit the highlighted rows in the excel files: if using text stimuli, put "blank.png" in the stimulusImage column; if using image stimuli, put a single space character in the stimulusText column, as empty cells will cause the task to crash and Psychopy will throw an undefined variable error.
- The escape key quits the task at any time. 
- The order of presentation of blocks within the task (e.g., whether participants get flowers-positive/insects-negative or flowers-negative/insects-positive first) is determined by the participant code. Odd numbered participants get the former, even numbered participants get the latter. Be careful that this counterbalancing does not covary with your counterbalancing of other experimental conditions.
- Block length is a function of the number of rows in the stimuli.xlsx file. Furthermore, the rows selected in each block are hard coded in the code components. As such, for the task to perform correctly 5 stimulus exemplars must be used in each category. 
- Accuracies can be calculated by reverse scoring the feedbackResponse.Corr variable. 
- .psydat and .csv files are produced for each participant. The .csv file is sufficient to most analyses (e.g., calculation of D scores).
- All stimuli and instructions can be altered by editing the excel files. Indeed, all strings presented within the task are variables, so translating the task into other languages only requires changes to the stimuli and instructions files.
- ITI is set to 250 ms (see Nosek et al., 2007: the IAT at age 7).


# Block layout
5 exemplars per stimulus category. Changing this will alter the block length and/or the ratio of trial-types within each block.

- Block 1 (attributes) 20 Trials (2 loops of 10)
- Block 2 (category and attributes) 72 Trials (2 loops of 36)
- Block 3 (category and attributes) 72 Trials (2 loops of 36)

## Known issues
1. If participants get 100% of trials correct throughout the whole task then three incorrect response columns will not be created for that participant. This is highly unlikely, and futhermore is not a problem if your data processing workflow merges data files across participants based on column header names (e.g., with R using readr's read.csv) rather than column positions (e.g., a SPSS script using a GET command, or some other R commands which assume equivalent table shapes).
2. Block order is not recorded in the data file, but is derived from the participant code (odd number vs even number). 
3. “Empty” cells in the instructions file must actually include a whitespace character or task will crash. If text stimuli are used, put “blank.png” in the image stimulus box.
4. There are more stimulus and instruction files than strictly necessary. This could be reduced with additional code components. This is not merely aesthetic: more stimuli files increases the scope for human error when setting up the task with new stimuli. 

## Changelog
### 0.9
This version is derived from a longer script containing several tasks for a completed experiment.  