import tango.io.Stdout;

int autoFunc( int x )
{
    auto int y;

    Stdout.formatln( "y is {}, setting to {}", y, x );
    y = x;
    return y;
}

void main()
{
    int ret;

    ret = autoFunc( 1 );
    Stdout.formatln( "autoFunc returned the value of y, which is set to {}", ret );
    ret = autoFunc( 2 );
    Stdout.formatln( "autoFunc returned the value of y, which is set to {}", ret );
}
