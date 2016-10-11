import tango.io.Stdout;

void main() {
    Stdout.format ("Printing the value {0} and then the same again {0}", 5).newline;
}
