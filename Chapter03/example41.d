import tango.io.DeviceConduit;

class FileConduit : DeviceConduit, DeviceConduit.Seek{ 

    long seek(long offset, Anchor anchor) { return 0; } 
}
