""" XVM (c) https://modxvm.com 2013-2021 """

from CurrentVehicle import g_currentVehicle
from gui import SystemMessages
from gui.shared.gui_items.processors.tankman import TankmanReturn
from gui.shared.utils import decorators


class _WGCompat():

    @decorators.adisp_process('crewReturning')
    def processReturnCrew(self, print_message = True):
        if not g_currentVehicle.isInHangar() or g_currentVehicle.isInBattle() or g_currentVehicle.isLocked() or g_currentVehicle.isCrewFull():
            return
        result = yield TankmanReturn(g_currentVehicle.item).request()
        if len(result.userMsg) and print_message:
            SystemMessages.pushI18nMessage(result.userMsg, type=result.sysMsgType)


    @decorators.adisp_process('crewReturning')
    def processReturnCrewForVehicleSelectorPopup(self, vehicle):
        if not (vehicle.isCrewFull or vehicle.isInBattle or vehicle.isLocked):
            yield TankmanReturn(vehicle).request()


g_instance = _WGCompat()
