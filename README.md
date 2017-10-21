### patches

instead of forking and merging, i like to maintain set of patches so that the \
changes always apply to on top of the branch

this requires a little maintainence and fails on conflicts
but is a bit "cleaner" 

for now manually apply the patch with `git am`  
if the remote updates

```
git reset --hard remote-branch
git pull
git am ../patches/.patch
```
fix conflicts update patch


### TODO:
write a script to apply all the patches in order  
write a script to update patches  
write a script to backup the changed file not only the diff  
