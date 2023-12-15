package com.mbxvoid.util.ckeditor;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GetImageContent {
	@RequestMapping("/ckeditor/getImageForContents.do")
	public void getImageForContents( ModelMap model, @RequestParam Map<String, Object> commandMap, HttpServletResponse response) throws Exception {
	    String fileNm = (String)commandMap.get("fileNm");
	    String fileStr = "contents/";

	    File tmpDir = new File(fileStr);
	    if(!tmpDir.exists()) {
	        tmpDir.mkdirs();
	    }

	    FileInputStream fis = null;
	    BufferedInputStream in = null;
	    ByteArrayOutputStream bStream = null;

	    try {

	        fis = new FileInputStream(new File(fileStr, fileNm));
	        in = new BufferedInputStream(fis);
	        bStream = new ByteArrayOutputStream();

	        int imgByte;
	        while ((imgByte = in.read()) != -1) {
	            bStream.write(imgByte);
	        }

	        String type = "";
	        String ext = fileNm.substring(fileNm.lastIndexOf(".") + 1).toLowerCase();

	        if ("jpg".equals(ext)) {
	            type = "image/jpeg";
	        } else {
	            type = "image/" + ext;
	        }

	        response.setHeader("Content-Type", type);
	        response.setContentLength(bStream.size());

	        bStream.writeTo(response.getOutputStream());

	        response.getOutputStream().flush();
	        response.getOutputStream().close();

	    } finally {
	        bStream.close();
	        in.close();
	        fis.close();
	    }
	}
}
