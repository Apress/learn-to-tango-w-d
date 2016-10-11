import tango.io.Conduit;

class SocketConduit : Conduit {
        private static SocketConduit freelist;
        private SocketConduit           next;
  
        package static synchronized SocketConduit allocate ()
        {       
                SocketConduit s;

                if (freelist)
                   {
                   s = freelist;
                   freelist = s.next;
                   }
                else
                   { } 
                return s;
        }
}
