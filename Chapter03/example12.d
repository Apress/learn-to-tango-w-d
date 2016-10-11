struct Time {
    uint hour;
    int timeZone;
    bool usingAM;

    int time() { 
        if (usingAM && hour > 12) return hour - 12;
        else return hour; 
    } 
}
