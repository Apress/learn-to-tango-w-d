import Integer = tango.text.convert.Integer;
import tango.io.Console;

void main() {
    auto text = Integer.format (new char[32], 12345L, 
                                Integer.Style.HexUpper, 
                                Integer.Flags.Prefix);
    Cout (text).newline;
}
