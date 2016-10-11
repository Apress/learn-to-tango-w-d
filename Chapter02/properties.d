import tango.io.Stdout;

void main()
{
    Stdout.formatln("int.init is {}", int.init);
    Stdout.formatln("int.sizeof is {}", int.sizeof);
    Stdout.formatln("int.alignof is {}", int.alignof);
    Stdout.formatln("int.mangleof is '{}'", int.mangleof);
    Stdout.formatln("int.stringof is '{}'", int.stringof);

    int x;
    Stdout.formatln("x.init is {}", x.init);
    Stdout.formatln("x.sizeof is {}", x.sizeof);
    Stdout.formatln("x.alignof is {}", x.alignof);
    Stdout.formatln("x.mangleof is '{}'", x.mangleof);
    Stdout.formatln("x.stringof is '{}'", x.stringof);
}