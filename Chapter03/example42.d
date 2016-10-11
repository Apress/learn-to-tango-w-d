import tango.io.Stdout;

void main() {
    Stdout("Output: ", 2).newline;
    Stdout.opCall("Output: ", 2).newline;
}
