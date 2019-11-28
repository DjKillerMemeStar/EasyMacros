
# EasyMacros
EasyMacros is a script for [luamacros](https://github.com/me2d13/luamacros) with the goal of making it easy to use for not so "techy" people.

## Disclaimer
This script is not finished! Neither is the guide. You can still use it but if you find anything wierd or unclear let me know!

## Installation
- Make sure you have succesfully installed [luamacros](https://github.com/me2d13/luamacros)
- Create a "EasyMacros" folder in the same folder as your luamacros.exe
- Place all files from this repo in that folder.

## Getting started

 1. Download this repo.
 2. Run the "FindKeyboard.lua" script with luamacros.
 3. The id of your macro keyboard starts with 'MACROS' and is between the '&' symbols
	- For example: MACROS  :  \\?\ACPI#DLLK07A9#4&**32F00E5A**&0#{884B96C3-56EF-11D1-BC8C-00A0C91405DD} [65618] :  keyboard
	- Wil result in: 32F00E5A
 4. Replace keyboard id with your id in "main.lua" (don't forget the quotes).
	- Example: `local keyboardId = '32F00E5A'`
 5. Now create a "commands.txt" file.
 6. Insert some commands into the file.
	- for examples on this look at "commandsExample.txt"
 7. Start the luamacros.exe .
 8. press the first icon (open).
    - Select: the "main.lua" file.
  9. Press the blue arrow, and your done!

## Commands
Currently there are 4 commands available.

 - Refresh
	 - Refreshes the "command" file so you don't have to restart luamacros to add new keys
- Keys
	- Send the keys as fast as possible after one another
- Slow
	- Send the keys with a 40 milisecond interval to the computer, this way the program has time to process each key
- Spawn
	- Opens a program

## Special symbols
Its possible to use special symbols just the same way as you would in luamacros, a list of these can be found [here](https://github.com/me2d13/luamacros/wiki/List-of-Keys).
