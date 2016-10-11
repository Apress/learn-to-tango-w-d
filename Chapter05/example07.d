template Choice( T, size_t size : 4 = T.sizeof )
{
    pragma( msg, "Choice: size = 4" );
}

template Choice( T, size_t size : 8 = T.sizeof )
{
    pragma( msg, "Choice: size = 8" );
}

void main()
{
    alias Choice!(int)  A;
    alias Choice!(long) B;
}
