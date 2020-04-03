package com.uc;

import java.io.IOException;
import java.util.logging.ConsoleHandler;
import java.util.logging.FileHandler;
import java.util.logging.Formatter;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

public class MyLogger {
static private FileHandler fileText;
static private SimpleFormatter formattertext;
static private FileHandler fileHtml;
static private Formatter formatterHtml;

static public void setup() throws SecurityException, IOException {
	Logger logger=Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);
	Logger rootLogger=Logger.getLogger("");
	Handler[] handlers=rootLogger.getHandlers();
	for(Handler handler:handlers) {
	if(handler instanceof ConsoleHandler) {
		rootLogger.removeHandler(handler);
	}
	}	   
	logger.setLevel(Level.INFO);
	fileText=new FileHandler("Logging.txt");
	fileHtml=new FileHandler("Logging.html");
	
	formattertext=new SimpleFormatter();
	fileText.setFormatter(formattertext);
	logger.addHandler(fileText);
	
	formatterHtml=new MyFormatter();
	fileHtml.setFormatter(formatterHtml);
	logger.addHandler(fileHtml);
	
}

}
