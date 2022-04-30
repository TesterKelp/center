package com.testsystem.usercenter.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.testsystem.admin.utils.UserUtil;
@Controller
public class UploadPicAction {
	private String allowSuffix = "jpg,png,gif,jpeg,JPG";//允许文件格式
	private long allowSize = 2L;//允许文件大小
	private String fileName;
	private String[] fileNames;
	
	private  String fileN ;

	public String getFileN() {
		return fileN;
	}

	public void setFileN(String fileN) {
		this.fileN = fileN;
	}

	public String getAllowSuffix() {
		return allowSuffix;
	}

	public void setAllowSuffix(String allowSuffix) {
		this.allowSuffix = allowSuffix;
	}

	public long getAllowSize() {
		return allowSize * 1024 * 1024;
	}

	public void setAllowSize(long allowSize) {
		this.allowSize = allowSize;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String[] getFileNames() {
		return fileNames;
	}

	public void setFileNames(String[] fileNames) {
		this.fileNames = fileNames;
	}

	
	
	
	/**
	 * 
	 * <p class="detail">
	 * 功能：重新命名文件
	 * </p>
	 * 
	 * @author wangsheng
	 * @date 2014年9月25日
	 * @return
	 */
	private String getFileNameNew() {
		SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		return fmt.format(new Date());
	}
	
	
	/**
	 * 
	 * <p class="detail">
	 * 功能：文件上传
	 * </p>
	 * 
	 * @author wangsheng
	 * @date  2014年9月25日
	 * @param files
	 * @param destDir
	 * @throws Exception
	 */
	public void uploads(MultipartFile[] files, String destDir,
			HttpServletRequest request) throws Exception {
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName()
				+ ":" + request.getServerPort() + path;
		try {
			fileNames = new String[files.length];
			int index = 0;
			for (MultipartFile file : files) {
				String suffix = file.getOriginalFilename().substring(
						file.getOriginalFilename().lastIndexOf(".") + 1);
				int length = getAllowSuffix().indexOf(suffix);
				if (length == -1) {
					throw new Exception("请上传允许格式的文件");
				}
				if (file.getSize() > getAllowSize()) {
					throw new Exception("您上传的文件大小已经超出范围");
				}
				String realPath = request.getSession().getServletContext()
						.getRealPath("/");
				System.out.println(realPath + destDir+"44444444444444444444444");
				File destFile = new File(realPath + destDir);
				if (!destFile.exists()) {
					destFile.mkdirs();
				}
				String fileNameNew = getFileNameNew() + "." + suffix;//
				File f = new File(destFile.getAbsoluteFile() + "\\"
						+ fileNameNew);
				file.transferTo(f);
				f.createNewFile();
				System.out.println(basePath + destDir+"44444444444444444444444");
				fileNames[index++] = basePath + destDir + fileNameNew;
			}
		} catch (Exception e) {
			throw e;
		}
	}
	
	
	
	/**
	 * 
	 * <p class="detail">
	 * 功能：文件上传
	 * </p>
	 * 
	 * @author wangsheng
	 * @date  2014年9月25日
	 * @param files
	 * @param destDir
	 * @throws Exception
	 */
	public void upload(MultipartFile file, String destDir,
			HttpServletRequest request) throws Exception {

		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName()
				+ ":" + request.getServerPort() + path;
		try {
			String suffix = file.getOriginalFilename().substring(
					file.getOriginalFilename().lastIndexOf(".") + 1);
			int length = getAllowSuffix().indexOf(suffix);
			if (length == -1) {
				throw new Exception("请上传允许格式的文件");
			}
			if (file.getSize() > getAllowSize()) {
				throw new Exception("您上传的文件大小已经超出范围");
			}
			File destFile = new File(destDir);
			if (!destFile.exists()) {
				destFile.mkdirs();
			}
			String fileNameNew   ;
			if(UserUtil.getCurrentUser() == null) {
//				 new user  upload  avatar
				fileNameNew = getFileNameNew() + "." + suffix;
			}else{
				int userid =UserUtil.getCurrentUserinfo().getUserid();
				fileNameNew = userid+"_"+getFileNameNew() + "." + suffix;	
				
			}
			
			File f = new File(destFile.getAbsoluteFile() + "/" + fileNameNew);
			file.transferTo(f);
			f.createNewFile();
			fileName = basePath + destDir + fileNameNew;
			System.out.println(fileName+"44444444444444444444444");
			setFileN(fileNameNew) ;
		} catch (Exception e) {
			throw e;
		}
	}
	
	
	
	
	
	@RequestMapping(value ="/module/usercenter/up.do", method = RequestMethod.POST)
	public void upload(@RequestParam("file")MultipartFile file,HttpServletRequest request,HttpServletResponse response) {
		 try {
			String   faceAddres=  request.getSession().getServletContext().getRealPath("/");
			String   address = faceAddres+"//pic//face" ;
			 System.out.println(address);
             upload(file, address,request);
//             response.getWriter().print(getFileName());
             response.getWriter().print(getFileN());
         } catch (Exception e) {
             e.printStackTrace();
         }
	}
	
	
	@RequestMapping(value ="/module/share/uptopic.do", method = RequestMethod.POST)
	public void uploadTopic(@RequestParam("file")MultipartFile file,HttpServletRequest request,HttpServletResponse response) {
		 try {
			String   faceAddres=  request.getSession().getServletContext().getRealPath("/");
			String   address = faceAddres+"//pic//topicimage" ;
			 System.out.println(address);
             upload(file, address,request);
//             response.getWriter().print(getFileName());
             response.getWriter().print(getFileN());
         } catch (Exception e) {
             e.printStackTrace();
         }
	}
	
	
	@RequestMapping(value ="/index/upicon.do", method = RequestMethod.POST)
	public void uploadIcon(@RequestParam("file")MultipartFile file,HttpServletRequest request,HttpServletResponse response) {
		 try {
			String   faceAddres=  request.getSession().getServletContext().getRealPath("/");
			String   address = faceAddres+"//pic//icon" ;
			 System.out.println(address);
             upload(file, address,request);
             response.getWriter().print(getFileN());
         } catch (Exception e) {
             e.printStackTrace();
         }
	}
	
	@RequestMapping(value ="/index/upBg.do", method = RequestMethod.POST)
	public void uploadBg(@RequestParam("file")MultipartFile file,HttpServletRequest request,HttpServletResponse response) {
		 try {
			String   faceAddres=  request.getSession().getServletContext().getRealPath("/");
			String   address = faceAddres+"//index//bg" ;
			 System.out.println(address);
             upload(file, address,request);
             response.getWriter().print(getFileN());
         } catch (Exception e) {
             e.printStackTrace();
         }
	}
	
	@RequestMapping(value ="/module/share/uploadlogo.do", method = RequestMethod.POST)
	public void uploadLogo(@RequestParam("file")MultipartFile file,HttpServletRequest request,HttpServletResponse response) {
		 try {
			String   faceAddres=  request.getSession().getServletContext().getRealPath("/");
			String   address = faceAddres+"//pic//logo" ;
			 System.out.println(address);
             upload(file, address,request);
//             response.getWriter().print(getFileName());
             response.getWriter().print(getFileN());
         } catch (Exception e) {
             e.printStackTrace();
         }
	}
	
	
	
	
	
	
	
}
