import tango.io.Stdout;
import tango.core.Thread;

void main()
{
    void printDg()
    {
        for(int i=0; i<10; ++i)
        {
            Stdout.formatln("i = {}", i);
            Stdout("Yielding fiber.").newline;
            Fiber.yield();
            Stdout("Back in the fiber").newline;                      
        }
    }
    
    Fiber f = new Fiber(&printDg);
    for(int i=0; i<10; ++i)
    {
        Stdout("Calling fiber.").newline;
        f.call();
    }
}