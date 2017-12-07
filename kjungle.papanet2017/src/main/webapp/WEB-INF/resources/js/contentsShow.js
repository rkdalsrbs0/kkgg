var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
  var pager = $("#slideCnt").val();
  $(".slide-pager").html(slideIndex+' / '+pager);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}


function multiView(cid){
	$.ajax({
		type : "GET",
		url : "/content/cardNews/"+cid,
		dataType : "text",
		data : "cid="+cid,
		success : function(contents) {
			contents = JSON.parse(contents);
			console.log(contents.length);
			if(contents.length <= 0){
				alert("등록된 카드뉴스가 없습니다.");
				return;
			}
			var html="";
			for(var i = 0; i < contents.length; i++) {
				html += '<img class="mySlides" src="/imgPreview.do?id='+contents[i].fileId+'&type=" style="width: 100%;';
				if(i == 0){
					html += 'display: block;">';
				}else{
					html += 'display: none;">';
				}
			}
			html += '<div class="slide-pager">1 / '+contents.length+'</div>';
			$("#slideCnt").val(contents.length);
			html += '<button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>'; 
			html += '<button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)" style="background: url(/img/move_left.png) no-repeat -52px 0;">&#10095;</button>';
 			$("#cardNews").html(html); 
			$("#divpop").css("visibility","visible");
			$("#fade").css("visibility","visible");
			$("#cardNewsUrl").val(location.host+"/cardNews/view/"+cid);
			
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status + " 오류가 발생하였습니다.");
		}
	});
	
}

function movieView(cid){
	$.ajax({
		type : "GET",
		url : "/content/video/"+cid,
		dataType : "text",
		data : "cid="+cid,
		success : function(contents) {
			contents = JSON.parse(contents);
			
			if(contents.videoUrl == undefined){
				alert("들옥된 영상이 없습니다.");
				return;
			}
			
			videoUrl = contents.videoUrl.replace("https://youtu.be/", "http://www.youtube.com/embed/");;
			console.log(videoUrl);
			
			document.getElementById("main_frame").src = videoUrl;
			$("#main_frame_title").text(contents.title);
			$("#main_frame_content").text(removeTag(contents.content));
			$("#divpop01").css("visibility","visible");
			$("#fade01").css("visibility","visible");
			$("#videoUrl").val(contents.videoUrl);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(XMLHttpRequest.status + " 오류가 발생하였습니다.");
		}
	});
}

function videoCopyURI() {
	var IE = (window.clipboardData)?true:false;

	var http_url = $("#videoUrl").val();

	if(IE) {
		window.clipboardData.setData("Text", http_url);
		alert("클립보드에 소스가 복사되었습니다. \n블로그등에서 입력방식을 HTML로 변경하신 후\n Ctrl+V로 붙여넣어 주세요.");
		return;
	}
	else {
		prompt("해당 주소입니다. Ctrl+C를 눌러 클립보드에 복사하세요.", http_url);
	}
}

function cardCopyURI() {
	var IE = (window.clipboardData)?true:false;

	var http_url = $("#cardNewsUrl").val();

	if(IE) {
		window.clipboardData.setData("Text", http_url);
		alert("클립보드에 소스가 복사되었습니다. \n블로그등에서 입력방식을 HTML로 변경하신 후\n Ctrl+V로 붙여넣어 주세요.");
		return;
	}
	else {
		prompt("해당 주소입니다. Ctrl+C를 눌러 클립보드에 복사하세요.", http_url);
	}
}

function contentCopyURI() {
	var IE = (window.clipboardData)?true:false;

	var http_url =  location.href;

	if(IE) {
		window.clipboardData.setData("Text", http_url);
		alert("클립보드에 소스가 복사되었습니다. \n블로그등에서 입력방식을 HTML로 변경하신 후\n Ctrl+V로 붙여넣어 주세요.");
		return;
	}
	else {
		prompt("해당 주소입니다. Ctrl+C를 눌러 클립보드에 복사하세요.", http_url);
	}
}

function videoSendSNS(type){
	var http_url = $("#videoUrl").val();
	var snsTag	 = encodeURIComponent("육아홀릭 아빠의 당당한 선택 - 아빠넷 영상컨텐츠 ");
	var snsTitle = encodeURIComponent("육아홀릭 아빠의 당당한 선택 - 아빠넷 영상컨텐츠 ");
	var snsContent = encodeURIComponent("");
	var faceimage = "";
		var apiCallUrl = "http://api.bit.ly/v3/shorten"
				   + "?version=2.0.1"
				   + "&login=jccha"
				   + "&apiKey=R_8784e6e031eccf9e2f7d3a3c5a8d874b"
				   + "&callback=?"
				   + "&longUrl="+encodeURIComponent(window.location.href);
		if(navigator.platform.indexOf("Mac")){
		window.open("","SNS_POP","width=1024, height=800");
	}
		
	jQuery.getJSON(
		apiCallUrl,
		function(data){
			if(data.status_txt == "OK"){

				var sendUrl;
				var shortUrl = data.data["url"];

				switch(type){
				// 미투데이
				case "me":
					sendUrl = 'http://me2day.net/posts/new?new_post[body]="'+snsTitle+'":'+http_url+'&new_post[tags]='+snsTag;
					break;
				// 트위터
				case "tw":
					//sendUrl = 'http://twitter.com/home?status=RT+@kma_weather+'+snsTitle+':'+encodeURIComponent(shortUrl);
//					sendUrl = 'http://twitter.com/home?status='+snsTitle+':'+encodeURIComponent(shortUrl);
					sendUrl = 'http://twitter.com/?status='+snsTitle+':'+http_url;
					break;
				// 페이스북
				case "fa":
					sendUrl = "http://www.facebook.com/sharer.php?u="+http_url;
				//	sendUrl = "http://www.facebook.com/sharer.php?u="+encodeURIComponent(LinkUrl)+"&t="+snsTitle;
					break;
				case "line":
					var sns_title = "육아홀릭 아빠의 당당한 선택 ";	//기본 타이틀

					var sns_summary = "아빠넷"; //페이지 설명

					var sns_br = "\n" //라인에서 이쁘게 보이려면 줄바꿈도 같이보냅시다.

					var sns_link = http_url; //내 블로그 주소도 보내줄래

					var sns_img = "" //아쉽게도 라인은 이미지 공유를 모르겠다... 아시는분 나도알려죠요~

					//변수명은 내맘대로

					//이제 쏴주면 된다!

					sendUrl = "http://line.me/R/msg/text/?" + encodeURIComponent(sns_title + sns_br + sns_summary + sns_br + sns_link);
					break;
					
				case "kakaostory":
					sendUrl = "https://story.kakao.com/share?url="+http_url;
					break;
					
				case "blog":
					sendUrl = "http://share.naver.com/web/shareView.nhn?url="+http_url;
					break;
				}
				
					
				if((typeof sendUrl != "undefined") && sendUrl != ""){
					window.open(sendUrl,"SNS_POP","width=1024, height=800");
				}
			}
		}
	);
	return false;
}


function sendSNS(type){
	var snsTag	 = encodeURIComponent("육아홀릭 아빠의 당당한 선택 - 아빠넷 ");
	var snsTitle = encodeURIComponent("육아홀릭 아빠의 당당한 선택 - 아빠넷 ");
	var snsContent = encodeURIComponent("");
	var faceimage = "";
		var apiCallUrl = "http://api.bit.ly/v3/shorten"
				   + "?version=2.0.1"
				   + "&login=jccha"
				   + "&apiKey=R_8784e6e031eccf9e2f7d3a3c5a8d874b"
				   + "&callback=?"
				   + "&longUrl="+encodeURIComponent(window.location.href);
		if(navigator.platform.indexOf("Mac")){
		window.open("","SNS_POP","width=1024, height=800");
	}

	jQuery.getJSON(
		apiCallUrl,
		function(data){
			if(data.status_txt == "OK"){

				var sendUrl;
				var shortUrl = data.data["url"];

				switch(type){
				// 미투데이
				case "me":
					sendUrl = 'http://me2day.net/posts/new?new_post[body]="'+snsTitle+'":'+location.href+'&new_post[tags]='+snsTag;
					break;
				// 트위터
				case "tw":
					//sendUrl = 'http://twitter.com/home?status=RT+@kma_weather+'+snsTitle+':'+encodeURIComponent(shortUrl);
//					sendUrl = 'http://twitter.com/home?status='+snsTitle+':'+encodeURIComponent(shortUrl);
					sendUrl = 'http://twitter.com/?status='+snsTitle+':'+location.href;
					break;
				// 페이스북
				case "fa":
					sendUrl = "http://www.facebook.com/sharer.php?u="+location.href;
				//	sendUrl = "http://www.facebook.com/sharer.php?u="+encodeURIComponent(LinkUrl)+"&t="+snsTitle;
					break;
				case "line":
					var sns_title = "육아홀릭 아빠의 당당한 선택 ";	//기본 타이틀

					var sns_summary = "아빠넷"; //페이지 설명

					var sns_br = "\n" //라인에서 이쁘게 보이려면 줄바꿈도 같이보냅시다.

					var sns_link = location.href; //내 블로그 주소도 보내줄래

					var sns_img = "" //아쉽게도 라인은 이미지 공유를 모르겠다... 아시는분 나도알려죠요~

					//변수명은 내맘대로

					//이제 쏴주면 된다!

					sendUrl = "http://line.me/R/msg/text/?" + encodeURIComponent(sns_title + sns_br + sns_summary + sns_br + sns_link);
					break;
				case "kakaostory":
					sendUrl = "https://story.kakao.com/share?url="+location.href;
					
				case "blog":
					sendUrl = "http://share.naver.com/web/shareView.nhn?url="+location.href;
					break;
				}
				
					
				if((typeof sendUrl != "undefined") && sendUrl != ""){
					window.open(sendUrl,"SNS_POP","width=1024, height=800");
				}
			}
		}
	);
	return false;
}

function cardSendSNS(type){
	var http_url = $("#cardNewsUrl").val();
	var snsTag	 = encodeURIComponent("육아홀릭 아빠의 당당한 선택 - 아빠넷 영상컨텐츠 ");
	var snsTitle = encodeURIComponent("육아홀릭 아빠의 당당한 선택 - 아빠넷 영상컨텐츠 ");
	var snsContent = encodeURIComponent("");
	var faceimage = "";
		var apiCallUrl = "http://api.bit.ly/v3/shorten"
				   + "?version=2.0.1"
				   + "&login=jccha"
				   + "&apiKey=R_8784e6e031eccf9e2f7d3a3c5a8d874b"
				   + "&callback=?"
				   + "&longUrl="+encodeURIComponent(window.location.href);
		if(navigator.platform.indexOf("Mac")){
		window.open("","SNS_POP","width=1024, height=800");
	}
		
	jQuery.getJSON(
		apiCallUrl,
		function(data){
			if(data.status_txt == "OK"){

				var sendUrl;
				var shortUrl = data.data["url"];

				switch(type){
				// 미투데이
				case "me":
					sendUrl = 'http://me2day.net/posts/new?new_post[body]="'+snsTitle+'":'+http_url+'&new_post[tags]='+snsTag;
					break;
				// 트위터
				case "tw":
					//sendUrl = 'http://twitter.com/home?status=RT+@kma_weather+'+snsTitle+':'+encodeURIComponent(shortUrl);
//					sendUrl = 'http://twitter.com/home?status='+snsTitle+':'+encodeURIComponent(shortUrl);
					sendUrl = 'http://twitter.com/?status='+snsTitle+':'+http_url;
					break;
				// 페이스북
				case "fa":
					sendUrl = "http://www.facebook.com/sharer.php?u="+http_url;
				//	sendUrl = "http://www.facebook.com/sharer.php?u="+encodeURIComponent(LinkUrl)+"&t="+snsTitle;
					break;
				case "line":
					var sns_title = "육아홀릭 아빠의 당당한 선택 ";	//기본 타이틀

					var sns_summary = "아빠넷"; //페이지 설명

					var sns_br = "\n" //라인에서 이쁘게 보이려면 줄바꿈도 같이보냅시다.

					var sns_link = http_url; //내 블로그 주소도 보내줄래

					var sns_img = "" //아쉽게도 라인은 이미지 공유를 모르겠다... 아시는분 나도알려죠요~

					//변수명은 내맘대로

					//이제 쏴주면 된다!

					sendUrl = "http://line.me/R/msg/text/?" + encodeURIComponent(sns_title + sns_br + sns_summary + sns_br + sns_link);
					break;
					
				case "kakaostory":
					sendUrl = "https://story.kakao.com/share?url="+http_url;
					break;
					
				case "blog":
					sendUrl = "http://share.naver.com/web/shareView.nhn?url="+http_url;
					break;
				}
				
					
				if((typeof sendUrl != "undefined") && sendUrl != ""){
					window.open(sendUrl,"SNS_POP","width=1024, height=800");
				}
			}
		}
	);
	return false;
}

function kakaoLink(idx){
	// 사용할 앱의 JavaScript 키를 설정해 주세요.  
    Kakao.init('25d0e9e97a9579ca0575dfdaf6868522');  
  
    // 카카오톡 링크 버튼을 생성합니다. 처음 한번만 호출하면 됩니다.  
    Kakao.Link.createTalkLinkButton({  
      container: '#kakao-link-btn',  
      label: '[카카오톡 공유] 아빠넷',  
      image: {  
        src: 'http://dn.api1.kage.kakao.co.kr/14/dn/btqaWmFftyx/tBbQPH764Maw2R6IBhXd6K/o.jpg',  
        width: '300',  
        height: '200'  
      },  
      webButton: {  
        text: '바로가기',  
        url: 'http://www.papanet4you.kr/contents/'+idx // 앱 설정의 웹 플랫폼에 등록한 도메인의 URL이어야 합니다.  
      }  
    });  
}

function videoKakaoLink(){
	var http_url = $("#videoUrl").val();
	// 사용할 앱의 JavaScript 키를 설정해 주세요.  
    Kakao.init('25d0e9e97a9579ca0575dfdaf6868522');  
  
    // 카카오톡 링크 버튼을 생성합니다. 처음 한번만 호출하면 됩니다.  
    Kakao.Link.createTalkLinkButton({  
      container: '#kakao-link-btn',  
      label: '[카카오톡 공유] 아빠넷',  
      image: {  
        src: 'http://dn.api1.kage.kakao.co.kr/14/dn/btqaWmFftyx/tBbQPH764Maw2R6IBhXd6K/o.jpg',  
        width: '300',  
        height: '200'  
      },  
      webButton: {  
        text: '바로가기',  
        url: http_url // 앱 설정의 웹 플랫폼에 등록한 도메인의 URL이어야 합니다.  
      }  
    });  
}

function cardKakaoLink(){
	var http_url = $("#cardNewsUrl").val();
	// 사용할 앱의 JavaScript 키를 설정해 주세요.  
    Kakao.init('25d0e9e97a9579ca0575dfdaf6868522');  
  
    // 카카오톡 링크 버튼을 생성합니다. 처음 한번만 호출하면 됩니다.  
    Kakao.Link.createTalkLinkButton({  
      container: '#kakao-link-btn',  
      label: '[카카오톡 공유] 아빠넷',  
      image: {  
        src: 'http://dn.api1.kage.kakao.co.kr/14/dn/btqaWmFftyx/tBbQPH764Maw2R6IBhXd6K/o.jpg',  
        width: '300',  
        height: '200'  
      },  
      webButton: {  
        text: '바로가기',  
        url: http_url // 앱 설정의 웹 플랫폼에 등록한 도메인의 URL이어야 합니다.  
      }  
    });  
}

function removeTag( str ) {
	return str.replace(/(<([^>]+)>)/gi, "");
}