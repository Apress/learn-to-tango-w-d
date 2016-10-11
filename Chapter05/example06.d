enum Color
{
    RED,
    BLUE
}

template Choice( int i : 1 )
{
    pragma( msg, "Choice: int = 1" );
}

template Choice( int i : 2 )
{
    pragma( msg, "Choice: int = 2" );
}

template Choice( bool b : true )
{
    pragma( msg, "Choice: bool = true" );
}

template Choice( float f )
{
    pragma( msg, "Choice: float = ?" );
}

template Choice( Color c : Color.BLUE )
{
    pragma( msg, "Choice: Color = BLUE" );
}

template Choice( char[] s )
{
    pragma( msg, "Choice: s = " ~ s );
}

void main()
{
    alias Choice!(1)    A;
    alias Choice!(2)    B;
    alias Choice!(3.0)  C;
    alias Choice!(true) D;
    alias Choice!(Color.BLUE)  E;
    alias Choice!("Hello, D!") F;
}
