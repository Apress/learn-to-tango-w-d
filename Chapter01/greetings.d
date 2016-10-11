module greetings;

import tango.io.Stdout;

void hello (char[][] names)
{
        foreach (name; names)
                 Stdout.formatln ("hello {}", name);
}