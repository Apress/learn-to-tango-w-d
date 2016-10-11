import tango.util.log.Configurator;
import tango.util.log.Log;

void main()
{
    Logger logger = Log.getLogger("MyLogger");

    // Turn off Trace messages
    logger.level = Logger.Level.Info;

    logger.trace("I'm a trace message, but you can't see me!");
    logger.info("I'm an info message!");
    logger.warn("I'm a warn message!");
    logger.error("I'm an error message!");
    logger.fatal("I'm a fatal message!");
    logger.append(Logger.Level.Fatal, "I'm a fatal message, too!");

    // Turn Trace messages back on
    logger.level = Logger.level.Trace;

    logger.trace("Hey, you can see trace messages now!");
}