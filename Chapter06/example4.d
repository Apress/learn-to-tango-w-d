import tango.text.Util;
import tango.io.Console;

void main() {
    foreach (segment; quotes ("one two 'three four' five", " ")) {
        Cout (segment).newline;
    }
}
