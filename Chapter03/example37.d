interface EventHandler { void handle(Event); }

class Event { 
    void printDetails();
}

class Events {
    void registerHandler(EventHandler eh) { }
}

void main() {
    auto e = new Events;
    e.registerHandler( 
            new class EventHandler { 
                void handle(Event e) { e.printDetails(); } 
            }
    );
}
