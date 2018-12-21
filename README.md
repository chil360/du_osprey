
Dirty Unicorns Oreo (13.X) for Osprey
=====================================

Current Status
--------------

What's working?
 - Bluetooth
 - Camera (except HDR)
 - Camcorder
 - RIL
 - WiFi
 - Storage
 - 4G
 - Camera HDR - Use provided OpenCamera
 - Selinux Enforcing

Not working?
 - VoLTE

Download
--------

Downloads for DU 13.x are available here at [AndroidFileHost](https://androidfilehost.com/?w=files&flid=272894).

Build Instructions
------------------
Create a build directory

	mkdir du
	cd du

Initialize your local repository using the LineageOS trees, use a command like this:

    repo init -u git://github.com/DirtyUnicorns/android_manifest.git -b p9x-caf

Now create a local_manifests directory

    mkdir .repo/local_manifests

Copy my local manifest 'osprey.xml' to the 'local_manifests' directory.

Then to sync up:

    repo sync -c -f --force-sync

OR, for those with limited bandwidth/storage:

    repo sync -c -f --no-clone-bundle --no-tags --force-sync --optimized-fetch --prune

Apply Patches

    Place patch.sh and all *.patch files in your build directory. Run the patch.sh script to apply the patches.

Now start the build...

```bash
# Go to the root of the source tree...
$
# ...and run to prepare our devices list
$ . build/envsetup.sh
# ... now run
$ brunch osprey
```

Please see the [Dirty Unicorns website](https://dirtyunicorns.com/) for further information.
