package rcvdemo;
import org.apache.logging.log4j.*;

public class myTimerLoggins {
	
	
	private static Logger demoLogger = LogManager.getLogger(myTimerLoggins.class.getName());
	public static void main(String[] args) {
		
		for(int i = 0; i < 3000; i++) {
			demoLogger.info("this is info logger");
			demoLogger.error("this is error logger");
			demoLogger.debug("this is error debug");
			demoLogger.fatal("this is error fatal");
            try {
				Thread.sleep(20);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
		
		

	}

}
