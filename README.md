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

### usage
After a `repo sync` repo will checkout the branch from specified remote.  
Run `./patches/patch.sh log` from source dir to see if the original remote has updated.  
Then rebase with `./patches/patch.sh rebase`

Fix the patch upon confict if necessary.  
Then update our remote with  
`./patches/patch.sh forcepush`
