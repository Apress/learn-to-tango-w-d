import tango.text.convert.Layout;
import tango.io.Console;

void main() {
    auto layout = new Layout!(char); // Need to specify encoding you are going to use
    auto result = layout("A format {}", "string");
    Cout (result).newline;
}
