import Toybox.Lang;
import Toybox.WatchUi;

class BeachVolleyDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onKeyPressed(keyEvent) {
        System.println("ON KEY PRESSED" + keyEvent);
        return true;
    }

    function onMenu() as Boolean {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new BeachVolleyMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

}