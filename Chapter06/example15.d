import tango.io.Stdout;

void main() {
    char[] s = "I";  // subject
    char[] o = "Bill"; // object
    Stdout.format ("{0} can see {1}.", s, o).newline;
    Stdout.format ("{1} {0} can see.", s, o).newline;
}
