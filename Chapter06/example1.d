import tango.text.Util;
import tango.io.Console;

void main() {
    char[] original = "A string to have some letters replaced";
    auto result = replace (original.dup, 'r' , 'l');
    Cout (result).newline;
}
