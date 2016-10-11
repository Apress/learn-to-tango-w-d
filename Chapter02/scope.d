// This is module scope. Here, we declare x and initialize it with a constant
// expression.
int x = 1;

void main()
{   // A new block scope starts here--a child of the module scope.

    // y is declared inside main's block scope, meaning it is local to main.
    // It can see x, but x can't see it.
    int y = x;

    if(1 < 2)
    {   // A new block scope starts here--a child of main's scope.
    
        // Because x is visible in main's scope, it is also visible here. And
        // because main's scope is this scope's parent, y is visible, too.
        // However, z is visible neither in main's scope nor in the module
        // scope.
        int z = x + y;
        
    }   // The end of the if block scope
        
}   // The end of main's block scope

void someFunc()
{   // A new block scope starts here--a child of the module scope and a 
    // sibling of main's scope.

    // This y is declared inside someFunc's scope. It can see x, but x can't
    // see it. Also, neither it nor the y in main's scope are visible to each
    // other.
    int y = x;

}   // The end of someFunc's block scope