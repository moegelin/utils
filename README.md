# utils

## IntelliJ

###Scopes

Include: `file[<project>]:*/`  
Exclude: `!file:*/dist//*`  
Connect Rules: `$<ruleName>&&!file:test//*`  


## Git

### Reorder commits
`git rebase -i HEAD~3`  
3 is the number of commits reordered. Opens editor where the oldest commits are on top.  
--> Reorder lines, save and exit.

###Squash two non-consecutive commits
`git rebase --interactive HEAD~4`

Change the order like you wish and write __squash/fixup__ to the commits you want to merge together.


