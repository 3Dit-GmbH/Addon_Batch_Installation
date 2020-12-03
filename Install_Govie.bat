@ECHO OFF 

set version_list=80 81 82 83 90 91 92 93 94
set prefix="C:\Program Files\Blender Foundation\Blender 2."
set blenderpath=

for %%v in (%version_list%) do (
    if exist %prefix%%%v (set "blenderpath=%prefix%%%v" & echo "Found Blender Version %%v")
)

cd %blenderpath%
blender -b -P .\Addon\install_addon.py -- -addon_path .\Addon\GovieTools.zip -addon_name GovieTools
blender -b -P .\Addon\install_addon.py -- -addon_path .\Addon\GLBTextureTools.zip -addon_name GLBTextureTools

pause