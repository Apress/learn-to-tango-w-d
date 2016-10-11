module ObjectList;

class List
{
    void insert( Object o )
    {
        head = new Node( o, head );
    }

    int opApply( int delegate( inout Object ) dg )
    {
        for( Node n = head; n; n = n.next )
        {
            if( auto r = dg( n.elem ) )
                return r;
        }
        return 0;
    }

private:
    static class Node
    {
        Object elem;
        Node   next;

        this( Object e, Node n )
        {
            elem = e;
            next = n;
        }
    }

    Node head;
}
