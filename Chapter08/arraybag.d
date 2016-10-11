import tango.io.Stdout;
import tango.util.collection.ArrayBag;

class MyClass
{
    void print()
    {
        Stdout("Hello ArrayBag").newline;
    }
}

void main()
{
    // Fill an array bag with 10 instances of MyClass
    ArrayBag!(MyClass) bag = new ArrayBag!(MyClass);
    for(int i=0; i<10; ++i)
        bag.add(new MyClass);

    // Iterate the bag and perform a common operation
    foreach(mc; bag)
        mc.print();
}