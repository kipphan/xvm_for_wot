"""
SPDX-License-Identifier: GPL-3.0-or-later
Copyright (c) 2016-2023 XVM Contributors
"""

#
# Imports
#

import crosshair



#
# XFW API
#

__initialized = False

def xfw_module_init():
    global __initialized
    if not __initialized:
        crosshair.init()
        __initialized = True
    

def xfw_module_fini():
    global __initialized
    if __initialized:
        crosshair.fini()
        __initialized = False


def xfw_is_module_loaded():
    global __initialized
    return __initialized
