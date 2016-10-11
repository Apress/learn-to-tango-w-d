import tango.io.FilePath;

class FileConduit : DeviceConduit {
    private PathView path_;
    PathView path() { return path_; }
}

class DeviceConduit { }
