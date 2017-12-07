package jungle.util;

public class Paging {
	public String pagenos;
	public int arrSize;
	
	public Paging(){ }
	
	public int pageCalc(String returnValue){
		int pageno = toInt(pagenos);
		if(pageno<1){//현재 페이지
			pageno = 1;
		}
		int total_record = arrSize; //총 레코드 수
		int page_per_record_cnt = 10;  //페이지 당 레코드 수
		int group_per_page_cnt = 5;     //페이지 당 보여줄 번호 수[1],[2],[3],[4],[5]
		int record_end_no = pageno*page_per_record_cnt;				
		int record_start_no = record_end_no-(page_per_record_cnt-1);
		if(record_end_no>total_record){
			record_end_no = total_record;
		}
		int total_page = total_record / page_per_record_cnt + (total_record % page_per_record_cnt>0 ? 1 : 0);
		if(pageno>total_page){
			pageno = total_page;
		}
		int group_no = pageno/group_per_page_cnt+( pageno%group_per_page_cnt>0 ? 1:0);
		int page_eno = group_no*group_per_page_cnt;		
		int page_sno = page_eno-(group_per_page_cnt-1);	
		if(page_eno>total_page){
			page_eno=total_page;
		}
		int prev_pageno = page_sno-group_per_page_cnt;
		int next_pageno = page_sno+group_per_page_cnt;
		if(prev_pageno<1){
			prev_pageno=1;
		}
		if(next_pageno>total_page){	
			next_pageno=total_page/group_per_page_cnt*group_per_page_cnt+1;
		}
		if(returnValue.equals("page_eno")){
			return page_eno;
		}else if(returnValue.equals("page_sno")){
			return page_sno;
		}else if(returnValue.equals("prev_pageno")){
			return prev_pageno;
		}else if(returnValue.equals("next_pageno")){
			return next_pageno;
		}else if(returnValue.equals("total_page")){
			return total_page;
		}else{
			return 0;
		}
	}
	
	public Integer toInt(String x){
		int a = 0;
		try{
			a = Integer.parseInt(x);
		}catch(Exception e){}
		return a;
	}

	public String getPagenos() {
		return pagenos;
	}

	public void setPagenos(String pagenos) {
		this.pagenos = pagenos;
	}

	public int getArrSize() {
		return arrSize;
	}

	public void setArrSize(int arrSize) {
		this.arrSize = arrSize;
	}
}