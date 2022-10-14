""" XVM (c) https://modxvm.com 2013-2021 """

#
# Imports
#

# BigWorld
import logging
import WWISE

# XFW
from xfw.events import overrideMethod

# XVM.Main
import xvm_main.python.config as config

# XVM.Sounds
from . import ammoBay
from . import bankManager
from . import battleEnd
from . import enemySighted
from . import fireAlert
from . import gunReloaded
from . import remoteCommunication
from . import sixthSense



#
# Helpers
#

def _checkAndReplace(event):
    if not event:
        return event
    if not config.get('sounds/enabled'):
        return event

    mappedEvent = config.get('sounds/soundMapping/%s' % event)
    logSoundEvents = config.get('sounds/logSoundEvents')
    if mappedEvent is not None:
        if mappedEvent == '':
            mappedEvent = 'emptyEvent'
        if logSoundEvents:
            logging.getLogger('XVM/Sounds').info('_checkAndReplace: SOUND EVENT: %s => %s' % (event, mappedEvent))
        return mappedEvent
    else:
        if logSoundEvents:
            logging.getLogger('XVM/Sounds').info('_checkAndReplace: SOUND EVENT: %s' % event)
        return event



#
# Handlers
#


def _WWISE_WW_eventGlobal(base, event):
    return base(_checkAndReplace(event))


def _WWISE_WW_eventGlobalPos(base, event, pos):
    return base(_checkAndReplace(event), pos)


def _WWISE_WW_getSoundObject(base, objectName, *args, **kwargs):
    return base(_checkAndReplace(objectName), *args, **kwargs)


def _WWISE_WW_getSound(base, eventName, objectName, matrix, local):
    return base(_checkAndReplace(eventName), _checkAndReplace(objectName), matrix, local)


def _WWISE_WW_getSoundCallback(base, eventName, objectName, matrix, callback):
    return base(_checkAndReplace(eventName), _checkAndReplace(objectName), matrix, callback)


def _WWISE_WW_getSoundPos(base, eventName, objectName, position):
    return base(_checkAndReplace(eventName), _checkAndReplace(objectName), position)



#
# XFW API
#

__initialized = False

def xfw_module_init():
    global __initialized
    if not __initialized:
        overrideMethod(WWISE, 'WW_eventGlobal')(_WWISE_WW_eventGlobal)
        overrideMethod(WWISE, 'WW_eventGlobalPos')(_WWISE_WW_eventGlobalPos)
        overrideMethod(WWISE, 'WW_getSoundObject')(_WWISE_WW_getSoundObject)
        overrideMethod(WWISE, 'WW_getSound')(_WWISE_WW_getSound)
        overrideMethod(WWISE, 'WW_getSoundCallback')(_WWISE_WW_getSoundCallback)
        overrideMethod(WWISE, 'WW_getSoundPos')(_WWISE_WW_getSoundPos)

        ammoBay.init()
        bankManager.init()
        battleEnd.init()
        enemySighted.init()
        fireAlert.init()
        gunReloaded.init()
        remoteCommunication.init()
        sixthSense.init()

        __initialized = True


def xfw_module_fini():
    global __initialized
    if __initialized:
        ammoBay.fini()
        bankManager.fini()
        battleEnd.fini()
        enemySighted.fini()
        fireAlert.fini()
        gunReloaded.fini()
        remoteCommunication.fini()
        sixthSense.fini()
        __initialized = True


def xfw_is_module_loaded():
    global __initialized
    return __initialized
