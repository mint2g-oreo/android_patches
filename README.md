### patches

instead of forking and merging, i like to maintain a linear history
so that the changes always apply to on top of the branch

this requires a little maintainence and fails on conflicts
but is a bit "cleaner" 

### repos
https://github.com/mint2g/android_bionic
https://github.com/mint2g/android_frameworks_av
https://github.com/mint2g/android_frameworks_opt_telephony
https://github.com/mint2g/android_frameworks_native
https://github.com/mint2g/android_hardware_libhardware
https://github.com/mint2g/android_system_core
https://github.com/mint2g/android_system_media


the patches in this repo are there for easy applying

```
git reset --hard remote-branch-tip
git pull
git am ../patches/.patch
```
then update the patch upon confict if necessary


### TODO:
write a script to apply all the patches in order  
write a script to update patches  
