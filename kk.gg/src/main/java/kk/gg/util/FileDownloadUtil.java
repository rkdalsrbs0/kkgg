package kk.gg.util;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class FileDownloadUtil {
	protected final Logger log = LoggerFactory.getLogger(this.getClass());
	
	private static final int BUFF_SIZE = 2048;
	private static String UPLOAD_PATH_PRE = FileUtil.filePath;
	private static final String CHARSET = "UTF-8";
	
	public  void download(HttpServletRequest request, HttpServletResponse response, String paramFileName, String oriFileName, String receipt, String deleteYn) throws Exception {
		byte[] buffer = new byte[BUFF_SIZE];
		
		ServletOutputStream out_stream = null;
		BufferedInputStream in_stream = null;
		String filename = new String(paramFileName.getBytes(), CHARSET);
		if ((filename != null && filename.indexOf("..") > -1) || (filename != null && filename.indexOf("..") > -1)) {
			throw new RuntimeException("Not Authorized!!!");
		}

		File fis = new File(UPLOAD_PATH_PRE +"/"+receipt+"/"+filename);

		if (fis.exists()) {
			try {
				String mime = request.getSession().getServletContext().getMimeType(fis.getName());

				if (null == mime || mime.length() == 0) {
					mime = "application/octet-stream;";
				}
				response.setContentType(mime + "; charset=" + CHARSET);
				response.setHeader("Content-Transfer-Encoding", "binary");
				response.setHeader("Accept-Ranges", "bytes");
				response.setHeader("Content-Disposition", "attachment; filename=" + java.net.URLEncoder.encode(paramFileName, "UTF-8") + ";");
				
				long len = fis.length();
				response.setContentLength((int) len);

				out_stream = response.getOutputStream();
				in_stream = new BufferedInputStream(new FileInputStream(fis));

				int n = 0;

				while (n != -1) {
					out_stream.write(buffer, 0, n);
					n = in_stream.read(buffer, 0, BUFF_SIZE);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (in_stream != null) {
					try {
						in_stream.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				if (out_stream != null) {
					try {
						out_stream.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				// 파일 다운로드 처리 끝난 후에 파일 삭제
				if("Y".equals(deleteYn)){
					fis.delete();
				}
			}
		} else {
			log.error(" unknownfile!!!!!!!!!!!!!");
		}
	}
}
