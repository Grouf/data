#GearSwap data folder

Jobs that have GearSwap files:

MNK / WHM / BLM / RDM / THF / RNG / SAM / NIN / SMN / BLU / GEO

##Commands:
Within the function `self_command` is defined several commands that can be used in-game.  
To find the command to use in-game look for `command == 'name'` and use the command within
the single quote. To issue that command in a macro use `//console gs c name`.


###To Do:
1. Document usable commands at the top of each file
2. Add `sub_job_change` and `set_macro_book()` to all files
3. Create accuracy and damage taken sets for BLM / RNG / NIN / SMN
4. Change all files to use the same implementation of precast and midcast (use RDM and SAM as model)
  * MNK needs complete rewrite, use as model for all melee jobs
