import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;

class BeachVolleyMenuDelegate extends WatchUi.MenuInputDelegate {
    
    function initialize() {
        MenuInputDelegate.initialize();
    }

    function onSelect() as Void {
        System.println("ON SELECT");
    }

    function onKeyPressed(keyEvent) {
        System.println("ON KEY PRESSED");
    }

    function onBack() as Boolean {
        System.println("ON BACK");
        return true;
    }

    function onMenuItem(item as Symbol) as Void {
        if (item == :item_1) {
            System.println("item 1");
        } else if (item == :item_2) {
            System.println("item 2");
        }
    }

}