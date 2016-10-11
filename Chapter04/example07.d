import tango.io.Stdout;

char[] getMessage()
{
    char[5] buf = "hello";
    char[]  ret = buf;

    return ret;
}

void main()
{
    char[] msg = getMessage();

    Stdout.formatln( "{}", msg );
}
