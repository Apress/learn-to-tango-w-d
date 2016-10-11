module MyModule;

import tango.io.Stdout;

struct MyStruct
{
    static ~this()
    {
        Stdout.formatln( "A" );
    }
}

static ~this()
{
    Stdout.formatln( "B" );
}

class MyClass
{
    static ~this()
    {
        Stdout.formatln( "C" );
    }
}

void main() {}
