import tango.io.Stdout;
import tango.util.collection.HashSet;

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
    // Create a hash set to store integers
    HashSet!(int) set = new HashSet!(int);

    // Populate the set with the first 10 numbers in the Fibonacci sequence
    for(int i=0; i<10; ++i)
        set.add(fibonacci(i));

    // Print the sequence to the console
    foreach(i; set)
        Stdout(i).newline;

    // Now test the numbers 0 - 19 to see if they are in the set.
    // Print PASS if a number is in the set, and FAIL if it isn't.
    for(int i=0; i<20; ++i)
    {
        if(set.contains(i))
            Stdout.formatln("{}: PASS", i);
        else
            Stdout.formatln("{}: FAIL", i);
    }
}