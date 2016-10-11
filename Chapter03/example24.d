class Time {
    private uint month; // 0 is January, 11 December
    invariant() {
        assert ( month < 12 );
    }
}
