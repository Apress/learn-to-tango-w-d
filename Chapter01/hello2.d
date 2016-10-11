import tango.io.Stdout;

void main (char[][] args)
{
        if (args.length < 2)
            Stdout ("usage is: hello name [name] ... [name]").newline;
        else
           foreach (name; args[1..$])
                    Stdout.formatln ("hello {}", name);
}
