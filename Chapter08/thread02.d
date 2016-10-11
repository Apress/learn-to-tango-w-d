import tango.io.Stdout;
import tango.core.Thread;

class MyThread : Thread
{
    int id;
    
    this(int id)
    {
        super(&run);
        this.id = id;
    }
    
    void run()
    {
        for(int i=0; i<10; ++i)
        {
            Stdout.formatln("Thread {}: {}", id, i);
        }
        
        Stdout.formatln("Thread #{} is going to sleep!", id);
        Thread.sleep(1.0);      // Sleep for 1 second
        Stdout.formatln("Thread #{} has awakened and will now exit.", id);
    }
}

void main()
{
    Thread thread1 = new MyThread(1);   
    Thread thread2 = new MyThread(2);
    
    thread1.start();
    thread2.start();
    
    thread_joinAll();
    Stdout("Both threads have exited").newline;
}