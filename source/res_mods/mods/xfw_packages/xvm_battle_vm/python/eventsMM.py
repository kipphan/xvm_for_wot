
#
# Imports
#

# BigWorld
from BattleReplay import g_replayCtrl
from constants import ATTACK_REASONS
from gui.Scaleform.daapi.view.battle.shared.markers2d.manager import MarkersManager
from gui.Scaleform.daapi.view.battle.shared.markers2d.settings import CommonMarkerType
from gui.Scaleform.daapi.view.battle.shared.markers2d.vehicle_plugins import VehicleMarkerPlugin

# XFW
from xfw.events import overrideMethod

# XVM Main
import xvm_main.python.config as config

# XVM Battle VM
from .vehicleMarkers import g_markers
from .consts import AS_SYMBOLS



#
# Handlers
#

def _MarkersManager__init__(base, self):
    base(self)
    g_markers.init(self)


def _MarkersManager_populate(base, self):
    base(self)
    g_markers.populate()


def _MarkersManager_dispose(base, self):
    g_markers.destroy()
    base(self)


def _MarkersManager_createMarker(base, self, symbol, matrixProvider=None, active=True, markerType=CommonMarkerType.NORMAL):
    if g_markers.active:
        if symbol == 'VehicleMarker':
            symbol = AS_SYMBOLS.AS_VEHICLE_MARKER

    markerID = base(self, symbol, matrixProvider, active, markerType)
    return markerID


def _MarkersManager_destroyMarker(base, self, markerID):
    base(self, markerID)


_exInfo = False
def _MarkersManager_as_setShowExInfoFlagS(base, self, flag):
    if g_markers.active:
        if config.get('hotkeys/markersAltMode/enabled'):
            global _exInfo
            if config.get('hotkeys/markersAltMode/onHold'):
                _exInfo = flag
            elif flag:
                _exInfo = not _exInfo
            base(self, _exInfo)
    else:
        base(self, flag)


def _VehicleMarkerPlugin_updateVehicleHealth(base, self, vehicleID, handle, newHealth, aInfo, attackReasonID):
    if g_markers.active:
        if not (g_replayCtrl.isPlaying and g_replayCtrl.isTimeWarpInProgress):
            attackerID = aInfo.vehicleID if aInfo else 0
            self._invokeMarker(handle,
                               'updateHealth',
                               newHealth,
                               self._VehicleMarkerPlugin__getVehicleDamageType(aInfo),
                               '{},{}'.format(ATTACK_REASONS[attackReasonID], str(attackerID)))
            return
    base(self, vehicleID, handle, newHealth, aInfo, attackReasonID)



#
# Initialization
#

def init():
    overrideMethod(MarkersManager, '__init__')(_MarkersManager__init__)
    overrideMethod(MarkersManager, '_populate')(_MarkersManager_populate)
    overrideMethod(MarkersManager, '_dispose')(_MarkersManager_dispose)
    overrideMethod(MarkersManager, 'createMarker')(_MarkersManager_createMarker)
    overrideMethod(MarkersManager, 'destroyMarker')(_MarkersManager_destroyMarker)
    overrideMethod(MarkersManager, 'as_setShowExInfoFlagS')(_MarkersManager_as_setShowExInfoFlagS)
    overrideMethod(VehicleMarkerPlugin, '_updateVehicleHealth')(_VehicleMarkerPlugin_updateVehicleHealth)

def fini():
    pass
