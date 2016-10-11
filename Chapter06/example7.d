import tango.text.Text;
import Util = tango.text.Util;
import tango.io.Console;

void main() {
    auto source = new Text!(char)("one\ntwo\nthree");

    foreach (line; Util.lines(source.slice)) {
        Cout (line).newline;    
    }
}
