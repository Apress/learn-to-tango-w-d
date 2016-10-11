import TemplateList;
import tango.io.Stdout;

void main()
{
    auto list = new List!(int);
    for( int i = 3; i; --i )
        list.insert( i );

    foreach( elem; list )
        Stdout.formatln( "{}", elem );
}
