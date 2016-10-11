module TemplateList;

template List( T )
{
    class List
    {
        void insert( T val )
        {
            head = new Node( val, head );
        }

        int opApply( int delegate( inout T ) dg )
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
            T      elem;
            Node   next;

            this( T e, Node n )
            {
                elem = e;
                next = n;
            }
        }

        Node head;
    }
}
