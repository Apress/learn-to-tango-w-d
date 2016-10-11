import tango.io.Stdout;

void main()
{
    int x = 1;
    int y = 2;
    int z = 3;

    Stdout.formatln("In main, x: {} y: {} z: {}", x, y, z);

    // Call some function.
    someFunction(x, y, z);

    Stdout.formatln("In main again, x: {} y: {} z: {}", x, y, z);
}

void someFunction(int x, out int y, ref int z)
{
    Stdout.formatln("In someFunction, x: {} y: {} z: {}", x, y, z);

    x = 10;
    y = 20;
    z = 30;

    Stdout.formatln("In someFunction again, x: {} y: {} z: {}", x, y, z);
}