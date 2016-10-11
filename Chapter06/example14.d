import tango.io.Stdout;

void main() {
    Stdout.format ("Printing the value {0} to the {1}", 5, "console").newline;
    Stdout.format ("Printing the value {1} to the {0}", "console", 5).newline;
}
