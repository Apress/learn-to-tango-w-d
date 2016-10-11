import tango.io.Stdout;

template convertsToAnInt( T )
{
    const bool convertsToAnInt = is( T : int );
}

template isExactlyAnInt( T )
{
    const bool isExactlyAnInt = is( T == int );
}

void main()
{
    Stdout.formatln( "convertsToAnInt!(byte) = {}", convertsToAnInt!(byte) );
    Stdout.formatln( "convertsToAnInt!(char*) = {}", convertsToAnInt!(char*) );
    Stdout.formatln( "isExactlyAnInt!(int) = {}", isExactlyAnInt!(int) );
    Stdout.formatln( "isExactlyAnInt!(byte) = {}", isExactlyAnInt!(byte) );
}
