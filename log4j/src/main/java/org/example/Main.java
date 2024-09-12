package org.example;

import org.apache.logging.log4j.*;
import org.apache.logging.log4j.core.config.LoggerConfig;

public class Main {

    private static final Logger LOGGER = LogManager.getLogger(Main.class.getName());

    public static void main(String[] args) {

        for(int i = 0; i < 3000; i++) {
            LOGGER.info("this is info logger");
            LOGGER.error("this is error logger");
            LOGGER.debug("this is debug logger");
            try {
                Thread.sleep(20);
            } catch (InterruptedException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }



    }
}