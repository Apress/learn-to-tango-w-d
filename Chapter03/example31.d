class FileConduit : DeviceConduit {
    private void closeFile() { }

    override void close() {
        super.close();
        closeFile();
    }
}

class DeviceConduit {

    void close() { }

}
