import tango.io.Stdout;

void alter( char[7] param )
{
    param[] = "7654321";
}

void main()
{
    char[7] message = "1234567";

    Stdout.formatln( "{}", message );
    alter( message );
    Stdout.formatln( "{}", message );
}
