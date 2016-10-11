class Time {
    uint h;
    int tz;

    uint hour() { return h; }

    this(uint hour, int timeZone) {
        this.h = hour;
        this.tz = timeZone;
    }
}
