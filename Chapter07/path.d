import tango.io.Console,
       tango.io.FilePath;

void main (char[][] args)
{
        auto path = new FilePath ("/dev/tango/io/FilePath.d");
        Cout (path).newline;
        Cout (path.folder).newline;
        Cout (path.file).newline;
        Cout (path.name).newline;
        Cout (path.suffix).newline;
        Cout (path.ext).newline.newline;

        Cout (path.set("tango/io/Console.d")).newline;
        Cout (path.folder("other")).newline;
        Cout (path.file("myfile.x.y")).newline;
        Cout (path.name("test")).newline;
        Cout (path.suffix("txt")).newline;
}
