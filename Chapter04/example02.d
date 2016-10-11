import tango.io.Stdout;

int staticFunc( int x )
{
    static int y;

    Stdout.formatln( "y is {}, setting to {}", y, x );
    y = x;
    return y;
}

void main()
{
    int ret;

    ret = staticFunc( 1 );
    Stdout.formatln( "autoFunc returned the value of y, which is set to {}", ret );
    ret = staticFunc( 2 );
    Stdout.formatln( "autoFunc returned the value of y, which is set to {}", ret );
}
