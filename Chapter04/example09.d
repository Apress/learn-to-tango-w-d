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
    char[] message = "hello";

    void putMessage()
    {
        Stdout.formatln( message );
    }

    perform( &putMessage );
    return &putMessage;
}

void main()
{
    Operation op = func();
    perform( op );
}
