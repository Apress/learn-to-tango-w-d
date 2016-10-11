import TemplateList;
import tango.io.Stdout;

void printContents( T )( T list )
{
    foreach( elem; list )
        Stdout.formatln( "{}", elem );
}

void main()
{
    auto list = new List!(int);

    for( int i = 3; i; --i )
        list.insert( i );

    printContents!(List!(int))( list );
}
