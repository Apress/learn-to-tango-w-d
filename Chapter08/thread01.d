import tango.io.Stdout;
import tango.core.Thread;


void main()
{




    void printDg()
    {
        Thread thisThread = Thread.getThis;

        for(int i=0; i<10; ++i)
        {
            Stdout.formatln("{}: {}", thisThread.name, i);

        }

                Stdout.formatln("{} is going to sleep!", thisThread.name);
        Thread.sleep(1.0);      // Sleep for 1 second
        Stdout.formatln("{} is awake.", Thread.name);
    }

    Thread thread1 = new Thread(&printDg);
    thread1.name = "Thread #1";

    Thread thread2 = new Thread(&printDg);
    thread2.name = "Thread #2";

    thread1.start();
    thread2.start();

    thread_joinAll();
    Stdout("Both threads have exited").newline;
}