import tango.io.Console;

void main()
{
        Cout ("What is your name? ").flush;
        auto name = Cin.copyln;
        Cout ("Hello ")(name).newline;
}
