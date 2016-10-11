import tango.io.model.IConduit;

class MyProducer {
    void[] buffer;
    void produce(InputStream data) {
        data.read(buffer);
        data.clear.close;
    }
}
