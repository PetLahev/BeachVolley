import Toybox.Lang;
import Toybox.WatchUi;

class BeachVolleyDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() as Boolean {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new BeachVolleyMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

}