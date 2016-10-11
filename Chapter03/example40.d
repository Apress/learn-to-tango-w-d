interface IConduit { }

interface InputStream {
        IConduit conduit ();
        uint read (void[] dst);
        void clear ();
}
