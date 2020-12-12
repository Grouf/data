# GearSwap data folder

Jobs that have GearSwap files that will be updated:
- MNK / BLM / RDM / THF / RNG / SAM / NIN / BLU / GEO

These files are here for historical purposes:
- WHM / SMN

## Commands:
Within the function `self_command` is defined several commands that can be used in-game.  
To find the command to use in-game look for `command == 'name'` and use the command within
the single quote. To issue that command in a macro use `//console gs c name`.


## To Do:
1. Change all files to use the same implementation of precast and midcast (use RDM and SAM as model)
  - [ ] MNK / [ ] BLM / [x] RDM / THF / RNG / [x] SAM / NIN / BLU / GEO
2. Add `sub_job_change` and `set_macro_book()` to all files
3. Create accuracy and damage taken sets
4. Document usable commands at the top of each file
5. Modify Obi_Check.lua to return a T/F value and update jobs to use it
