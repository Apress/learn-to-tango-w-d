template WhileNotZero( int i )
{
    pragma( msg, "Hello, D!" );
    alias WhileNotZero!(i - 1) Dummy;
}

template WhileNotZero( int i : 0 )
{
    // Terminate loop
}

void main()
{
    alias WhileNotZero!(3) LoopThreeTimes;
}
