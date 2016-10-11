class Pipe : DeviceConduit {
        alias DeviceConduit.copy        copy;
        alias DeviceConduit.read        read;
}

class DeviceConduit {

    void copy () {}
    void read () {}

}
