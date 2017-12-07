package jungle.util;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.StringReader;
import java.nio.charset.Charset;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.Document;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.tool.xml.XMLWorker;
import com.itextpdf.tool.xml.XMLWorkerFontProvider;
import com.itextpdf.tool.xml.XMLWorkerHelper;
import com.itextpdf.tool.xml.css.CssFile;
import com.itextpdf.tool.xml.css.StyleAttrCSSResolver;
import com.itextpdf.tool.xml.html.CssAppliers;
import com.itextpdf.tool.xml.html.CssAppliersImpl;
import com.itextpdf.tool.xml.html.Tags;
import com.itextpdf.tool.xml.parser.XMLParser;
import com.itextpdf.tool.xml.pipeline.css.CSSResolver;
import com.itextpdf.tool.xml.pipeline.css.CssResolverPipeline;
import com.itextpdf.tool.xml.pipeline.end.PdfWriterPipeline;
import com.itextpdf.tool.xml.pipeline.html.HtmlPipeline;
import com.itextpdf.tool.xml.pipeline.html.HtmlPipelineContext;

public class PdfConvertUtil {
	
	
	public void pdfConvert(HttpServletResponse response, HttpServletRequest request, String htmlStr, String paramFileName){
		
		String filePath =request.getSession().getServletContext().getRealPath("/");
		PdfWriter writer = null;
		Document document = null;
		try {
			// Document 생성
			document = new Document(PageSize.A4, 50, 50, 50, 50); // 용지 및 여백 설정
	
			// PdfWriter 생성
	
			writer = PdfWriter.getInstance(document, new FileOutputStream(FileUtil.filePath+paramFileName)); // 바로 다운로드.
//			PdfWriter writer = PdfWriter.getInstance(document, response.getOutputStream());
			writer.setInitialLeading(12.5f);
	
	
			// 파일 다운로드 설정
//			response.setContentType("application/pdf");
//			String fileName = URLEncoder.encode("한글파일명", "UTF-8"); // 파일명이 한글일 땐 인코딩 필요
//			response.setHeader("Content-Transper-Encoding", "binary");
//			response.setHeader("Content-Disposition", "inline; filename=" + fileName + ".pdf");
			 
	
			// Document 오픈
			document.open();
			XMLWorkerHelper helper = XMLWorkerHelper.getInstance();
			     
	
			// CSS
			CSSResolver cssResolver = new StyleAttrCSSResolver();
			CssFile cssFile = helper.getCSS(new FileInputStream(filePath+"css/gongmo.css"));
			CssFile cssFile2 = helper.getCSS(new FileInputStream(filePath+"css/reset.css"));
			cssResolver.addCss(cssFile);
			cssResolver.addCss(cssFile2);
			     
	
			// HTML, 폰트 설정
			XMLWorkerFontProvider fontProvider = new XMLWorkerFontProvider(XMLWorkerFontProvider.DONTLOOKFORFONTS);
			fontProvider.register(filePath+"font/NanumGothic-Regular.ttf", "nanum"); // nanum은 alias, 
			CssAppliers cssAppliers = new CssAppliersImpl(fontProvider);
	
	
			HtmlPipelineContext htmlContext = new HtmlPipelineContext(cssAppliers);
			htmlContext.setTagFactory(Tags.getHtmlTagProcessorFactory());
	
	
			// Pipelines
			PdfWriterPipeline pdf = new PdfWriterPipeline(document, writer);
			HtmlPipeline html = new HtmlPipeline(htmlContext, pdf);
	
			CssResolverPipeline css = new CssResolverPipeline(cssResolver, html);
			 
	
			XMLWorker worker = new XMLWorker(css, true);
			XMLParser xmlParser = new XMLParser(worker, Charset.forName("UTF-8"));
			 
	
			// 폰트 설정에서 별칭으로 줬던 "nanum"을 html 안에 폰트로 지정한다.
			StringReader strReader = new StringReader(htmlStr);
			xmlParser.parse(strReader);
	
			writer.close();
		} catch(Exception e) {
			//System.out.println("============="+e);
			System.out.println("pdfConvert 오류 발생");
		} finally {
			document.close();
			writer.close();
			
		}
	}
}
