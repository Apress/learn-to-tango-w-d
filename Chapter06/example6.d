import tango.text.Text;

void main() {
    auto text = new Text!(char)("The couple danced the rumba");
    text.select("couple");
    text.replace("party").prepend("large ").select("rumba");
    text.replace("tango");
}
