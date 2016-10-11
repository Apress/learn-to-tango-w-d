import tango.io.Stdout;
import tango.io.FilePath;

class File {
    private FilePath path_;
    void path(FilePath newpath) { path_ = newpath; }
    FilePath path() { return path_; }
}

void main() {
    File f = new File;
    f.path = new FilePath("tango/io/FilePath.d");

    Stdout (f.path);
}
