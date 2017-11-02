package kk.gg.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Component("fileUtil")
public class FileUtil {

//****로컬용	
//	public static final String filePath = "C:\\TEMP\\";
//****
	
//****서버용	/filesvr/logo/
	public static final String filePath = "/data/fileserver/energycontest/";
//****    
    
    
    
    Logger log = LoggerFactory.getLogger(FileUtil.class);
    
    public List<Map<String,Object>> parseInsertFileInfo(Map<String,Object> map, HttpServletRequest request) throws Exception{
        MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
        Iterator<String> iterator = multipartHttpServletRequest.getFileNames();

        MultipartFile multipartFile = null;
        String originalFileName = null;
        String originalFileExtension = null;
        String storedFileName = null;

        List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
        Map<String, Object> listMap = null; 

        String boardIdx = String.valueOf(map.get("idx"));
        log.debug("boardIdx: " + boardIdx);
        String requestName = null;
        String idx = null;
        
        File file = new File(filePath);
        if(file.exists() == false){
        	file.setExecutable(true,true);
        	file.setReadable(true);
        	file.setWritable(true,true);
            file.mkdirs();
        }

        while(iterator.hasNext()){
            multipartFile = multipartHttpServletRequest.getFile(iterator.next());
            if(multipartFile.isEmpty() == false){
                originalFileName = multipartFile.getOriginalFilename();
                originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
                storedFileName = CommonUtil.getRandomString() + originalFileExtension;

                file = new File(filePath + storedFileName);
                multipartFile.transferTo(file);

                listMap = new HashMap<String,Object>();
                listMap.put("BOARD_IDX", boardIdx);
                listMap.put("ORIGINAL_FILE_NAME", originalFileName);
                listMap.put("STORED_FILE_NAME", storedFileName);
                listMap.put("FILE_SIZE", multipartFile.getSize());
                list.add(listMap);
            }
        }
        
        return list;
       
    
    }
    
    public List<Map<String, Object>> parseUpdateFileInfo(Map<String, Object> map, HttpServletRequest request) throws Exception{
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
    	Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
    	
    	MultipartFile multipartFile = null;
    	String originalFileName = null;
    	String originalFileExtension = null;
    	String storedFileName = null;
    	
    	List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
        Map<String, Object> listMap = null; 
        
        String boardIdx = String.valueOf(map.get("board"));
        String requestName = null;
        String idx = null;
        
        
        while(iterator.hasNext()){
        	multipartFile = multipartHttpServletRequest.getFile(iterator.next());
        	if(multipartFile.isEmpty() == false){
        		originalFileName = multipartFile.getOriginalFilename();
        		originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
        		storedFileName = CommonUtil.getRandomString() + originalFileExtension;
        		
        		multipartFile.transferTo(new File(filePath + storedFileName));
        		
        		listMap = new HashMap<String,Object>();
        		listMap.put("IS_NEW", "Y");
        		listMap.put("BOARD_IDX", boardIdx);
        		listMap.put("ORIGINAL_FILE_NAME", originalFileName);
        		listMap.put("STORED_FILE_NAME", storedFileName);
        		listMap.put("FILE_SIZE", multipartFile.getSize());
        		list.add(listMap);
        	}
        	else{
        		requestName = multipartFile.getName();
            	idx = "IDX_"+requestName.substring(requestName.indexOf("_")+1);
            	if(map.containsKey(idx) == true && map.get(idx) != null){
            		listMap = new HashMap<String,Object>();
            		listMap.put("IS_NEW", "N");
            		listMap.put("FILE_IDX", map.get(idx));
            		list.add(listMap);
            	}
        	}
        }
		return list;
	}
    
    
    
    public List<Map<String, Object>> writeLogoFile(Map<String, Object> map, HttpServletRequest request) throws Exception{
    	
    	MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
    	Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
    	
    	MultipartFile multipartFile = null;
        String originalFileName = null;
        String originalFileExtension = null;
        String storedFileName = null;
    	
        List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
        Map<String, Object> listMap = null; 
        
        String requestName = null;
        String idx = null;
        
    	OutputStream out = null;
    	try{
	    	while(iterator.hasNext()){	
    			multipartFile = multipartHttpServletRequest.getFile(iterator.next());
	    		if(multipartFile.isEmpty() == false){
	    			originalFileName = multipartFile.getOriginalFilename();
	    			originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
	    			
	                listMap = new HashMap<String,Object>();
	        		listMap.put("saveNm", storedFileName);
	        		listMap.put("fileNm", originalFileName);
	        		listMap.put("fileSize", multipartFile.getSize());
	                list.add(listMap);
	    			

		    		byte[] b = multipartFile.getBytes();
//		    		File file = new File("D:\\festa\\file1\\" + multipartFile.getOriginalFilename());
//		    		File file = new File("/filesvr/logo/" + multipartFile.getOriginalFilename());
		    		File file = new File(filePath+ multipartFile.getOriginalFilename());
		    		FileOutputStream fos = new FileOutputStream(file);
		    		try {
		    			fos.write(b);
		    		}catch(Exception e){
		    			//e.printStackTrace();
						System.out.println("파일 오류 발생");
		    		} finally {
		    			fos.close();
		    		}
	    		}
	        	else{
	        		requestName = multipartFile.getName();
	            	idx = "IDX_"+requestName.substring(requestName.indexOf("_")+1);
	            	if(map.containsKey(idx) == true && map.get(idx) != null){
	            		listMap = new HashMap<String,Object>();
	            		listMap.put("IS_NEW", "N");
	            		listMap.put("FILE_IDX", map.get(idx));
	            		list.add(listMap);
	            	}
	        	}	
	    	}
    	}catch (IOException ioe){
    		//ioe.printStackTrace();
			System.out.println("파일 오류 발생");
    	}finally{
    		IOUtils.closeQuietly(out);
    	}
    	return list;
    }
    
    public List<Map<String, Object>> LogoUpdateFileInfo(Map<String, Object> map, HttpServletRequest request) throws Exception{
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
    	Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
    	
    	MultipartFile multipartFile = null;
    	String originalFileName = null;
    	String originalFileExtension = null;
    	
    	List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
        Map<String, Object> listMap = null; 
        
        String requestName = null;
        String idx = null;
        System.out.println("Insert 직전");
        
        while(iterator.hasNext()){
        	multipartFile = multipartHttpServletRequest.getFile(iterator.next());
        	if(multipartFile.isEmpty() == false){
        		originalFileName = multipartFile.getOriginalFilename();
        		originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
//        		storedFileName = CommonUtils.getRandomString() + originalFileExtension;
        		String modifyFileName = null;
                String appNo = UUID.randomUUID().toString();

                modifyFileName = appNo + "_data" +  originalFileExtension; //여기---------
        		System.out.println("fileName = " + modifyFileName);
        		
        		multipartFile.transferTo(new File(filePath + modifyFileName));
        		
        		listMap = new HashMap<String,Object>();
        		listMap.put("saveNm", modifyFileName); //여기---------
        		listMap.put("fileNm", originalFileName);
        		listMap.put("fileSize", multipartFile.getSize());
        		listMap.put("extension", originalFileExtension.replace(".", "").toUpperCase());
        		list.add(listMap);
        	}
        	else{
        		System.out.println("else");
        		requestName = multipartFile.getName();
            	idx = "IDX_"+requestName.substring(requestName.indexOf("_")+1);
            	if(map.containsKey(idx) == true && map.get(idx) != null){
            		listMap = new HashMap<String,Object>();
            		listMap.put("IS_NEW", "N");
            		listMap.put("FILE_IDX", map.get(idx));
            		list.add(listMap);
            	}
        	}
        }
		return list;
	}

	public void fileRename(String originalFileName, String folder, String newFileName) {
		System.out.println("originalFileName = " + originalFileName + ", foler = " + folder + ", newFileName = " + newFileName);
		File file = new File(filePath + folder);
		if(!file.exists()){
        	file.setExecutable(true,true);
        	file.setReadable(true);
        	file.setWritable(true,true);
			file.mkdirs();
		}
		new File(filePath + originalFileName).renameTo(new File(filePath + folder + newFileName));
	}
    
}
	

