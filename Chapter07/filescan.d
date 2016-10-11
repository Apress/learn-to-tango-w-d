import tango.io.Stdout,
       tango.io.FileScan;

void main()
{
        char[] root = ".";
        auto scan = (new FileScan)(root, ".d");

        Stdout.formatln ("Scanning '{}'", root);
        Stdout.format ("\n{} Folders\n", scan.folders.length);
        foreach (folder; scan.folders)
                 Stdout.format ("{}\n", folder);

        Stdout.format ("\n{0} Files\n", scan.files.length);
        foreach (file; scan.files)
                 Stdout.format ("{}\n", file);

        Stdout.formatln ("\n{} Errors", scan.errors.length);
        foreach (error; scan.errors)
                 Stdout (error).newline;
}
