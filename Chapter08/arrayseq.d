import tango.io.Stdout;
import tango.util.collection.ArraySeq;

// Given a number n, generates the next number in the
// Fibonacci sequence
int fibonacci(int n)
{
    if(n == 0) return 0;
    else if(n == 1) return 1;
    else return fibonacci(n-1) + fibonacci(n-2);
}

void main()
{
    // Create an array sequence to store integers
    ArraySeq!(int) seq = new ArraySeq!(int);

    // We are using a fixed set of numbers, so set the capacity to 10
    seq.capacity = 10;

    // Populate the collection
    for(int i=0; i<10; ++i)
        seq.append(fibonacci(i));

    // Print the sequence to the console
    foreach(i; seq)
        Stdout(i).newline;

    // Now test the numbers 0 - 19 to see if they are in the collection.
    // Print PASS if a number is in the collection, and FAIL if it isn't.
    for(int i=0; i<20; ++i)
    {
        if(seq.contains(i))
            Stdout.formatln("{}: PASS", i);
        else
            Stdout.formatln("{}: FAIL", i);
    }
}