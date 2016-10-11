import tango.io.FilePath;

class File {
    private PathView path_; 
    void path(PathView p) { path_ = p; }
    PathView path() { return path_; }
}
