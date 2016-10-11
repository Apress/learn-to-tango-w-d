struct Time {
    int hour;

    static Time opAssign(int time) {
        Time t;
        t.hour = time;
        return t;
    }
}

Time t = Time(3);
