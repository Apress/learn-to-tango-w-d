void func( T )( T val )
{
    pragma( msg, "func( T )( T val )" );
}

void func(T, U = void )( T[] val )
{
    pragma( msg, "func( T )( T[] val )" );
}

void func( T, U = void, V = void )( T* val )
{
    pragma( msg, "func( T )( T* val )" );
}

void main()
{
    int   i;
    int*  p;
    int[] a;

    func( i );
    func( p );
    func( a );
}
