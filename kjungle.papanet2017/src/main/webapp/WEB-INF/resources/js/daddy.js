
$(document).ready(function() {

	/***** GNB 메뉴 ******/
	$('.menu').click(function() {
		if($(this).hasClass('close')){
			$(this).removeClass('close');
			$('.depth2').slideUp();
			$(this).html("전체메뉴");
		} 
		else {
			$(this).addClass('close');
			$('.depth2').slideDown();
			$(this).html("닫기");
		}
	});

	$('.depth2').mouseleave(function(e) {
		$('.menu').removeClass('close');
		$(this).slideUp();
		$(".header_top_area .right a").html("전체메뉴");
	});


	/* 모바일전체메뉴*/
	$('.btn_menu').click(function() {
		$('.m_menu').css("display", "block");
	});
	$('.m_close').click(function() {
		$('.m_menu').css("display", "none");
	});



	/* 공유 */
	$('.btn_share').click(function(e) {
		if($(this).hasClass('on')){
			$('.share_more').hide();
			$(this).removeClass('on');
		} 
		else {
			$('.share_more').show();
			$(this).addClass('on');
		}
	});
	/* 공유 */
	$('.btn_share01').click(function(e) {
		if($(this).hasClass('on')){
			$('.share_more01').hide();
			$(this).removeClass('on');
		} 
		else {
			$('.share_more01').show();
			$(this).addClass('on');
		}
	});


	var hHeight = $(".header").outerHeight(true);
		if(hHeight != null && hHeight != 0 && hHeight != undefined) {
			var winHeight = window.innerHeight;
			var fHeight = $(".footer").outerHeight(true);
			var minHeight = winHeight - hHeight - fHeight - 2;
			var subHeight = $(".submenu").outerHeight(true);
			if(subHeight != null && subHeight != 0 && subHeight != undefined) {
				minHeight -= subHeight;
			}
			$(".container").css("minHeight", minHeight);
		}

	/*
	var winHeight = window.innerHeight;
	var hHeight = $(".header").height();
	var fHeight = 140;
	var minHeight = winHeight - hHeight - fHeight - 52;
	var subHeight = $(".submenu").height();
		if(subHeight != null && subHeight != 0 && subHeight != undefined) {
		subHeight += 45;
		minHeight -= subHeight;
	}
	$(".container").css("minHeight", minHeight);
	*/
	
	
	
});
//
//	function multiView(){
//		$("#divpop").css("visibility","visible");
//		$("#fade").css("visibility","visible");
//	}
//	function movieView(){
//		$("#divpop01").css("visibility","visible");
//		$("#fade01").css("visibility","visible");
//	}
	