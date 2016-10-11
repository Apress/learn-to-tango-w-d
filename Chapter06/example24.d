import tango.io.Console;
import tango.time.WallClock;
import tango.text.locale.Locale;

void main() {
    auto layout = new Locale;
    Cout (layout ("{:ddd, dd MMMM yyyy HH':'mm':'ss z}", WallClock.now)).newline;
}
