package com.telus.controller;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.apache.jmeter.engine.StandardJMeterEngine;
import org.apache.jmeter.save.SaveService;
import org.apache.jmeter.util.JMeterUtils;
import org.apache.jorphan.collections.HashTree;

import java.io.FileInputStream;

@Controller
@RequestMapping("/start")
public class DNSController {

	public static final String JMETER_PROPERTY = "/Users/eltonz/documents/workspace/apache-jmeter-2.13/bin/jmeter.properties";
	public static final String JMETER_HOME = "/Users/eltonz/documents/workspace/apache-jmeter-2.13/";

	@RequestMapping(value = "/dns", method = RequestMethod.GET)
	public String startDNS(ModelMap model) {

		//File jmeterHome = new File(System.getProperty("jmeter.home"));
		//String slash = System.getProperty("file.separator");

		// JMeter Engine
		try {	
			//String testplan = System.getProperty("testplan");
			String testplan = "/Users/eltonz/documents/workspace/apache-jmeter-2.13/DNSTest_Simple.jmx";

			StandardJMeterEngine jmeter = new StandardJMeterEngine();


			// Initialize Properties, logging, locale, etc.
			JMeterUtils.loadJMeterProperties(JMETER_PROPERTY);
			JMeterUtils.setJMeterHome(JMETER_HOME);
			JMeterUtils.initLogging();// you can comment this line out to see extra log messages of i.e. DEBUG level
			JMeterUtils.initLocale();




			// Initialize JMeter SaveService
			SaveService.loadProperties();

			// Load existing .jmx Test Plan
			//SaveService.saveTree(testPlanTree, new FileOutputStream(jmeterHome + slash + "example.jmx"));

			HashTree testPlanTree = SaveService.loadTree(new FileInputStream(testplan));//"/Users/eltonz/documents/workspace/apache-jmeter-2.13/DNSTest_Simple.jmx"));
			//in.close();

			// Run JMeter Test
			jmeter.configure(testPlanTree);
			jmeter.run();
		}catch(Exception e){
			// if any error occurs
			e.printStackTrace();
		}

		return "hello";

	}
}



