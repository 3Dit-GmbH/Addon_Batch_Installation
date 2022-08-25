@ECHO OFF 
Setlocal EnableDelayedExpansion

set version_list=0 1 2 3 4 5 6 7 8 9 11 12 13 14 15 16 17
set prefix=C:\Program Files\Blender Foundation\Blender 3.
set blenderpath=

for %%v in (%version_list%) do (
    set full_path=%prefix%%%v
    if exist !full_path! (set blenderpath=!full_path! & echo "Found Blender Version %%v")
)

set blenderpath=%blenderpath:~0,-1%
set PATH=%PATH%;%blenderpath%

echo Installing addons for Blender installation in %blenderpath%

blender -b -P .\Addon\install_addon.py -- -addon_path .\Addon\GovieTools.zip -addon_name GovieTools
blender -b -P .\Addon\install_addon.py -- -addon_path .\Addon\GLBTextureTools.zip -addon_name GLBTextureTools

pause