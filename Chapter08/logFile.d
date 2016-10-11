import tango.util.log.Log;
import tango.util.log.FileAppender;
import tango.util.log.EventLayout;
import tango.io.FilePath;

void main()
{
    auto fa = new FileAppender(new FilePath("log.txt"), new SimpleTimerLayout);
    Log.getRootLogger.addAppender(fa);

    Logger logger = Log.getLogger("MyLogger");
    logger.info("Hello file appender!");
}