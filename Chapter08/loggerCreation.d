import tango.util.log.Configurator;
import tango.util.log.Log;

void main()
{
    Logger logger = Log.getLogger("MyLogger");
    logger.info("Hello world");
}