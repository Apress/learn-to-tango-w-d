import TimeStamp = tango.text.convert.TimeStamp;
import tango.io.Console;

void main() {
    auto date = "Sun, 06 Nov 1994 08:49:37 GMT";
    auto msSinceJan1st0001 = TimeStamp.parse (date);
    auto text = TimeStamp.format (new char[64], msSinceJan1st0001);
    Cout (text).newline;
}
