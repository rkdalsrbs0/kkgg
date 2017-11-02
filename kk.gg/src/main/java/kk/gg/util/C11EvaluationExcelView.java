package kk.gg.util;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.view.document.AbstractExcelView;

import kk.gg.login.domain.C11ReceiptVO;

public class C11EvaluationExcelView extends AbstractExcelView  {

	private static final Logger logger = LoggerFactory.getLogger(C11EvaluationExcelView.class);


	protected void buildExcelDocument(Map<String, Object> model, HSSFWorkbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		logger.debug("[EvaluationExcelView] START >>>>>>>>>>>>>>>>>>>>>>>>>> ");

		Map<String, Object> map = (Map<String, Object>) model.get("excelMap");
		
		List<C11ReceiptVO> idea = (List<C11ReceiptVO>) map.get("idea");
		List<C11ReceiptVO> system = (List<C11ReceiptVO>) map.get("system");
		List<C11ReceiptVO> design = (List<C11ReceiptVO>) map.get("design");
		List<C11ReceiptVO> essay = (List<C11ReceiptVO>) map.get("essay");
		
		String title = "심사 결과";
		
		List<String> iStr = new ArrayList<String>();
		iStr.add("번호");
		iStr.add("접수번호");
		iStr.add("대상");
		iStr.add("그룹");
		iStr.add("idea1");
		iStr.add("idea2");
		iStr.add("idea3");
		iStr.add("idea4");
		iStr.add("idea5");
		iStr.add("idea6");
		iStr.add("idea7");
		iStr.add("idea8");
		iStr.add("총점");
		iStr.add("평균");
		
		List<String> sStr = new ArrayList<String>();
		sStr.add("번호");
		sStr.add("접수번호");
		sStr.add("대상");
		sStr.add("그룹");
		sStr.add("idea1");
		sStr.add("idea2");
		sStr.add("idea3");
		sStr.add("idea4");
		sStr.add("idea5");
		sStr.add("idea6");
		sStr.add("idea7");
		sStr.add("idea8");
		sStr.add("총점");
		sStr.add("평균");
		
		List<String> dStr = new ArrayList<String>();
		dStr.add("번호");
		dStr.add("접수번호");
		dStr.add("대상");
		dStr.add("그룹");
		dStr.add("design1");
		dStr.add("design2");
		dStr.add("design3");
		dStr.add("design4");
		dStr.add("design5");
		dStr.add("design6");
		dStr.add("design7");
		dStr.add("design8");
		dStr.add("총점");
		dStr.add("평균");
		
		List<String> eStr = new ArrayList<String>();
		eStr.add("번호");
		eStr.add("접수번호");
		eStr.add("대상");
		eStr.add("그룹");
		eStr.add("essay1");
		eStr.add("essay2");
		eStr.add("essay3");
		eStr.add("essay4");
		eStr.add("essay5");
		eStr.add("essay6");
		eStr.add("essay7");
		eStr.add("essay8");
		eStr.add("총점");
		eStr.add("평균");
		
		createSheetWithData(workbook, "제품아이디어", iStr, idea);
		createSheetWithData(workbook, "설비아이디어", sStr, system);
		createSheetWithData(workbook, "디자인", dStr, design);
		createSheetWithData(workbook, "에세이", eStr, essay);
		
		
		String excelName= URLEncoder.encode(title,"UTF-8");
		response.setContentType("application/vnd.ms-excel");
		response.setHeader("Content-Disposition", "ATTachment; Filename=" + excelName + ".xls");
		
		logger.debug("[EvaluationExcelView] END >>>>>>>>>>>>>>>>>>>>>>>>>> ");
		
	}

	private void createSheetWithData(HSSFWorkbook workbook, String title, List<String> aStr, List<C11ReceiptVO> data) {
		boolean isVO = false;
		
		if(data.size() > 0) {
			Object obj = data.get(0);
			isVO = obj instanceof C11ReceiptVO;
		}
		
		Sheet sheet = workbook.createSheet(title);
		sheet.setDefaultColumnWidth(16);
		
		Font bold11 = workbook.createFont();
		bold11.setBold(true);
		bold11.setFontHeightInPoints((short) 11);
		
		CellStyle cs = workbook.createCellStyle();
		cs.setAlignment(CellStyle.ALIGN_CENTER); 
		cs.setFillForegroundColor(HSSFColor.GREY_25_PERCENT.index);  
		cs.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
		cs.setFont(bold11);
		
		CellStyle defaultCs = workbook.createCellStyle();
		defaultCs.setAlignment(CellStyle.ALIGN_CENTER); 
		
		Font boldFont16 = workbook.createFont();
		boldFont16.setBold(true);
		boldFont16.setFontHeightInPoints((short) 16);
		
		CellStyle bold16 = workbook.createCellStyle();
		bold16.setFont(boldFont16);
		
		Row titleRow = sheet.createRow(0);
		Cell titleCell = titleRow.createCell(0);
		titleCell.setCellStyle(bold16);
		titleCell.setCellValue("<" + title + "> 심사결과"); // 첫번째 셀에 텍스트 입력
		
		Row header = sheet.createRow(2);
		for (int j=0; j<aStr.size(); j++) {
			Cell cell = header.createCell(j);
			cell.setCellStyle(cs);
			cell.setCellType(Cell.CELL_TYPE_STRING);  
			cell.setCellValue(aStr.get(j));
		}
		
		for (int i=0; i<data.size(); i++) {
			if (isVO) {
				C11ReceiptVO vo = (C11ReceiptVO)data.get(i);
				
				for (int k=0; k<aStr.size(); k++) {
					String score1 = "0";
					String score2 = "0";
					String score3 = "0";
					String score4 = "0";
					String score5 = "0";
					String score6 = "0";
					String score7 = "0";
					String score8 = "0";
					
					int count = 0;
					Row courseRow = sheet.createRow(i + 3);
					
					if(vo.getValuer1() != null){
						score1 = vo.getValuer1();
						courseRow.createCell(4).setCellValue(score1);
						count++;
					}else{
						courseRow.createCell(4).setCellValue("");
					}
					
					if(vo.getValuer2() != null){
						score2 = vo.getValuer2();
						courseRow.createCell(5).setCellValue(score2);
						count++;
					}else{
						courseRow.createCell(5).setCellValue("");
					}
					
					if(vo.getValuer3() != null){
						score3 = vo.getValuer3();
						courseRow.createCell(6).setCellValue(score3);
						count++;
					}else{
						courseRow.createCell(6).setCellValue("");						
					}
					
					if(vo.getValuer4() != null){
						score4 = vo.getValuer4();
						courseRow.createCell(7).setCellValue(score4);
						count++;
					}else{
						courseRow.createCell(7).setCellValue("");
					}
					
					if(vo.getValuer5() != null){
						score5 = vo.getValuer5();
						courseRow.createCell(8).setCellValue(score5);
						count++;
					}else{
						courseRow.createCell(8).setCellValue("");
					}
					
					if(vo.getValuer6() != null){
						score6 = vo.getValuer6();
						courseRow.createCell(9).setCellValue(score6);
						count++;
					}else{
						courseRow.createCell(9).setCellValue("");
					}
					if(vo.getValuer7() != null){
						score7 = vo.getValuer6();
						courseRow.createCell(10).setCellValue(score7);
						count++;
					}else{
						courseRow.createCell(10).setCellValue("");
					}
					if(vo.getValuer8() != null){
						score8 = vo.getValuer8();
						courseRow.createCell(11).setCellValue(score8);
						count++;
					}else{
						courseRow.createCell(11).setCellValue("");
					}
					
					courseRow.createCell(0).setCellValue(i + 1);
					courseRow.createCell(1).setCellValue(vo.getIdx());
					courseRow.createCell(2).setCellValue(vo.getTarget());
					courseRow.createCell(3).setCellValue(vo.getGroup());
					int total = Integer.parseInt(vo.getTotal());
					courseRow.createCell(12).setCellValue(total);
					
					try{
						courseRow.createCell(13).setCellValue(total/count);
					}catch(ArithmeticException e){
						courseRow.createCell(13).setCellValue("0");
					}
					
				}
			}
		}
	}
}