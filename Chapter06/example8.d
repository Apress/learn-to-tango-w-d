import tango.text.Text;
import Util = tango.text.Util;

void main() {
    auto dst = new Text!(char);
    foreach (element; Util.patterns ("all cows eat grass", "eat", "chew")) {
        dst.append (element);
    }
}
