import tango.io.Stdout;

template isPointer( T )
{
    const bool isPointer = is( typeof(*T) );
}

void main()
{
    Stdout.formatln( "isPointer!(int) = {}", isPointer!(int) );
    Stdout.formatln( "isPointer!(char*) = {}", isPointer!(char*) );
}
