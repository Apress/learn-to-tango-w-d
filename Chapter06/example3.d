import tango.text.Util;
import tango.io.Console;

void main() {
    foreach (segment; patterns("one, two, three", ", ")) {
        Cout (segment).newline;
    }
}
