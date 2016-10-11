import ObjectList;
import tango.io.Stdout;

void main()
{
    class Integer
    {
        int val;

        this( int v )
        {
            val = v;
        }
    }

    auto list = new List;
    for( int i = 3; i; --i )
        list.insert( new Integer( i ) );

    foreach( elem; list )
        Stdout.formatln( "{}", (cast(Integer) elem).val );
}
