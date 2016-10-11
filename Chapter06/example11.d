import Float = tango.text.convert.Float;
import tango.io.Console;

void main() {
    auto text = Float.format (new char[64], 223.1456667, 5, 2);
    Cout (text).newline;
}
