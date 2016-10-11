import tango.io.Stdout;

int multiply( int x, int y )
{
    int result = 0;
    for( int i = 0; i < y; ++i )
        result += x;
    return result;
}

void main()
{
    static const result = multiply( 2, 3 );
    Stdout.formatln( "2 * 3 is {}", result );
}
