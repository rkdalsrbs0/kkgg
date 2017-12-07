



var curNum = 1;
function addFileDl() {
	if($("[name=fileDl]").length == 10) {
		alert("10개까지 등록할 수 있습니다."); 
		return;
	}


	var targetDl = $("#dl" + curNum);
	curNum += 1;
	var addHtml = '';
	addHtml += '<dl id="dl' + curNum + '" name="fileDl">';
	addHtml += '<dt>작품이미지</dt>';
	addHtml += '<dd class="f_0">';
	addHtml += '<input type="text" class="txt  w_middle" id="file' + curNum + '">';
	addHtml += '<div class="textFileBox" style="display:inline-block;">';
	addHtml += '<label for="add_file' + curNum + '" class="file_right label_view">파일선택</label>';
	addHtml += '<input type="file" id="add_file' + curNum + '" onchange="changeFile(this, \'' + curNum + '\')">';
	addHtml += '<a href="#" onclick="delFileDl(\'' + curNum + '\')" class="file_add"><img src="img/btn_fileMinus.png"></a>';
	addHtml += '<span class="add_comment">1mb이하의 jpg / png</span>';
	addHtml += '</div>';
	addHtml += '</dd>';
	addHtml += '</dl>';

	targetDl.after(addHtml);
}

function delFileDl(num) {
	$("#dl"+num).hide();
}
	