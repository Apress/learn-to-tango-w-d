template List( T )
{
    pragma( msg, "List( T )" );
}

template List( T : int )
{
    pragma( msg, "List( T : int )" );
}

template List( T : T[] )
{
    pragma( msg, "List( T : T[] )" );
}

void main()
{
    alias List!(char)   A;
    alias List!(int)    B;
    alias List!(char[]) C;
}
