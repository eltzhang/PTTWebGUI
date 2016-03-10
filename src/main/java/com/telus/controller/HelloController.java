package com.telus.controller;

import java.util.List;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Arrays;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/hello")
public class HelloController {
	final static String TEST_PLAN_PATH = "/Users/eltonz/Documents/workspace/apache-jmeter-2.13";

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(ModelMap model) {

		File f = null;
		String[] paths = null;
		List<String> files = null;

		try{      
			// create new file
			f = new File(TEST_PLAN_PATH);

			// array of files and directory
			FilenameFilter  jmxFilter = new FilenameFilter() {
				public boolean accept(File dir, String name) {
					String lowercaseName = name.toLowerCase();
					if (lowercaseName.endsWith(".jmx")) {
						return true;
					} else {
						return false;
					}
				}
			};
			paths = f.list(jmxFilter);

			// for each name in the path array
			for(String path:paths)
			{
				// prints filename and directory name
				System.out.println(path);
				files = new ArrayList<String>(Arrays.asList(paths));
			}
		}catch(Exception e){
			// if any error occurs
			e.printStackTrace();
		}
		if(files != null ) {
			model.addAttribute("files",files);
			
			System.out.println("Test plans = " + files);
			
		}
		return "hello";
		
		
	}

	/*
	ProcessBuilder pb = new ProcessBuilder("myshellScript.sh", "myArg1", "myArg2");
	 Map<String, String> env = pb.environment();
	 env.put("VAR1", "myValue");
	 env.remove("OTHERVAR");
	 env.put("VAR2", env.get("VAR1") + "suffix");
	 pb.directory(new File("myDir"));
	 Process p = pb.start();
	 */
}
