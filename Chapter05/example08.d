import tango.io.Stdout;

template ChooseType( bool b )
{
    alias long ChooseType;
}

template ChooseType( bool b : true )
{
    alias short ChooseType;
}

template isSizeLessThan4( T )
{
    const bool isSizeLessThan4 = T.sizeof < 4;
}

void main()
{
    alias ChooseType!(isSizeLessThan4!(int))  WhenGreaterThan4;
    alias ChooseType!(isSizeLessThan4!(byte)) WhenLessThan4;

    Stdout.formatln( "WhenGreaterThan4.sizeof = {}", WhenGreaterThan4.sizeof );
    Stdout.formatln( "WhenLessThan4.sizeof = {}", WhenLessThan4.sizeof );
}
