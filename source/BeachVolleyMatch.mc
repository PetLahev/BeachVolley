import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;

class BeachVolleyMatch
{    
    private var _homeScore as Number;
    public function initialize( ) {
        _homeScore = 0;
        System.println("Match class initialized");
    }

    public function homeScore() {
        _homeScore++;
        System.println("Home score: " + _homeScore);
        return true;
    }
}