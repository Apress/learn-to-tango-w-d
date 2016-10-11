// This is an example of a program that exhibits undefined behavior and so a
// program crash or garbled output is expected.

import tango.io.Stdout;

alias void delegate() Operation;

void perform( Operation op )
{
    op();
}

Operation func()
{
    int x = 0;

    void putAndIncrement()
    {
        Stdout.formatln( "x is {}", x++ );
    }

    perform( &putAndIncrement );
    return &putAndIncrement;
}

void main()
{
    Operation op = func();
    perform( op );
}
