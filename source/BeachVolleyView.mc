import Toybox.Graphics;
import Toybox.Lang;
import Toybox.Timer;
import Toybox.WatchUi;

class BeachVolleyView extends WatchUi.View {

    private var _matchTimer as Timer.Timer?;

    function initialize() {
        View.initialize();
    }

    //! Callback for timer 1
    public function callback1() as Void {
        WatchUi.requestUpdate();
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.MainLayout(dc));
        var matchTimer = new Timer.Timer();
        matchTimer.start(method(:callback1), 10000, true);
        _matchTimer = matchTimer;
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
        System.println("On show");
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        // Call the parent onUpdate function to redraw the layout
        View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }

    //! Stop the first timer
    public function stopTimer() as Void {
        if (_matchTimer != null) {
            _matchTimer.stop();
        }
    }
}
