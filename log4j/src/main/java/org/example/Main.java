package org.example;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class Main {

    private static final Logger LOGGER = LogManager.getLogger(Main.class.getName());

    public static void main(String[] args) throws InterruptedException {

        for(int i = 0; i < 100; i++) {
            LOGGER.info("this is info logger");
            LOGGER.error("this is error logger");
            LOGGER.debug("this is debug logger");
            Thread.sleep(1);
        }



    }
}