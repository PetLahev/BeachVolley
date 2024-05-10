import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;

class BeachVolleyApp extends Application.AppBase {

    private var _view;

    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state as Dictionary?) as Void {
    }

    // onStop() is called when your application is exiting
    function onStop(state as Dictionary?) as Void {
    }

    // Return the initial view of your application here
    function getInitialView() as [Views] or [Views, InputDelegates] {
        _view = new BeachVolleyView();        
        return [ _view, new BeachVolleyDelegate(_view) ];
    }

    function getView() as BeachVolleyView {
        return _view;
    }

}

function getApp() as BeachVolleyApp {
    return Application.getApp() as BeachVolleyApp;
}

function getView() as BeachVolleyView {
    return Application.getApp().getView();
}