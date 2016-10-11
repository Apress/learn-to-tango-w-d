class SC : C {
    private int i;
    this (int i) { this(i, true); }
    this (int i, bool b) { super (i, b); }
}

class C {
    this (int i, bool b) { }
}
