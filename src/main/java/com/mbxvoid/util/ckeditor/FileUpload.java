package com.mbxvoid.util.ckeditor;

import java.io.File;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class FileUpload {
	@ResponseBody
    @RequestMapping("/ckeditor/ckeditor5Upload.do")
    public void fileUpload( MultipartHttpServletRequest multiRequest, HttpServletRequest request, HttpServletResponse response) {
		try {
	    	final String real_save_path = "contents";
	    	// 폴더가 없을 경우 생성
	    	File saveFolder = new File(real_save_path);
	    	System.out.println(saveFolder.exists());
    		if(!saveFolder.exists() || saveFolder.isFile()) {
    			saveFolder.mkdir();
    		}

			final Map<String, MultipartFile> files = multiRequest.getFileMap();
			MultipartFile fileload = (MultipartFile)files.get("upload");
			
		    //filename 취득
		    String fileName = fileload.getOriginalFilename();

		    int index = fileName.lastIndexOf(".");
			String ext = fileName.substring(index+1);
			Random ran = new Random(System.currentTimeMillis());
			fileName = System.currentTimeMillis()+"_"+(int)(ran.nextDouble()*10000)+"."+ext;

		    //폴더 경로 설정
		    String newfilename = real_save_path + File.separator + fileName;
		    System.out.println(newfilename);
		    
		    System.out.println(request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + "/ckeditor/getImageForContents.do?fileNm=" + fileName);
		    fileload.transferTo(new File(newfilename));
		    
			JSONObject outData = new JSONObject();
			
			outData.put("uploaded", true);
			outData.put("url", request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + "/ckeditor/getImageForContents.do?fileNm=" + fileName);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().print(outData.toString());
	    } catch (Exception e) {
	    	e.printStackTrace();
	    }
	}
}
