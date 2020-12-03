import bpy

import sys
import argparse
if '--' in sys.argv:
    argv = sys.argv[sys.argv.index('--') + 1:]
    parser = argparse.ArgumentParser()
    parser.add_argument('-addon_path', '--addon_path', dest='addon_path', metavar='FILE')
    parser.add_argument('-addon_name', '--addon_name', dest='addon_name')
    args = parser.parse_known_args(argv)[0]
    # print parameters
    print('\nInstalling Add-on : ', args.addon_name)
    print('\n')



bpy.ops.preferences.addon_install(filepath=args.addon_path)
bpy.ops.preferences.addon_enable(module=args.addon_name)
bpy.ops.wm.save_userpref()