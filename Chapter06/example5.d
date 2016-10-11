import tango.io.FileConduit,
       tango.io.Console;
import tango.text.stream.LineIterator;

void main() {
    foreach (line; new LineIterator!(char) ( new FileConduit ("filename") ))
        Cout (line).newline;
}
