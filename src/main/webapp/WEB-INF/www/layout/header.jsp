<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<nav class="header-nav col-percent-100  display-flex align-items-center">
    <div class="header-logo_text col-percent-15">MBXVOID</div>
    <div class="col-percent-70"></div>
    <div class="header-user_info-box col-percent-15 display-flex align-items-center justify-content-center">
        <div class="header-user_info display-flex align-items-center justify-content-center">
        	<i class="fa-solid fa-user" style="color:rgb(194, 194, 194);"></i>
        	<div class="bar_01" style="width:0rem"></div>
        	<div class="bar_03" style="width:0rem"></div>
        </div>
        <div class="header-user_info_box display-none">
			<input id="logout" type="submit" value="로그아웃" />
        </div>
    </div>
</nav>

<script>
window.onload = function(){
}
function goUrl(menuName){
	window.location.href = "/page.do?command=movePage&menu_nm="+menuName;
}
$(".header-user_info").on("click", function(){
	if($(".header-user_info_box").hasClass("display-none")){
		$(".header-user_info > i.fa-user").addClass("display-none");
		
// 		$(".bar_01").removeClass("display-none");
// 		$(".bar_03").removeClass("display-none");
		
		$(".bar_01").css({"transform":"rotate(-45deg)","top":"calc(50% - 2px)","width":"2rem"})
		$(".bar_03").css({"transform":"rotate(45deg)","top":"calc(50% - 2px)","width":"2rem"})
		$(".header-user_info_box").removeClass("display-none");
	}else{
		$(".header-user_info > i.fa-user").removeClass("display-none");
		
// 		$(".bar_01").addClass("display-none");
// 		$(".bar_03").addClass("display-none");
		
		$(".bar_01").css({"transform":"rotate(0deg)","top":"calc(50% - 15px)","width":"0rem"})
		$(".bar_03").css({"transform":"rotate(0deg)","top":"calc(50% - 0px)","width":"0rem"})
		
		$(".header-user_info_box").addClass("display-none");
	}
})
	
$("#logout").click(function(){
	logout();
})
// function searchMenu(){
// 	var mebx = new Mebx();
// 	var path = '/menu.do?command=searchMenuInfo';
//     $.ajax({
//     	type:"POST",
//     	url : path,
//     	data: JSON.stringify({
    		
//     	}),
//     	contentType : "application/json; charset=utf-8",
//     	dataType : "json",
//     	success : function(data){
//     		var length = data.length;
//     		var menuList = "";
//     		for(var i = 0; i<length; i++){
//     			menuList += '<li class="cursor-pointer"><a href="/page.do?command=movePage&menu_nm='+data[i].menu_file_nm+'">'+data[i].menu_nm+'</a></li>';
//     		}
//     			$(".menu_info_box").append(menuList);
//     	},
//     	error : function(){
//     		mebx.showMessage({title:"error", message:"error" ,type:"error"});
    		
//     	}
    	
//     });
// }
function logout(){
	var mebx = new Mebx();
	var path = '/login.do?command=logout';
    $.ajax({
    	type:"POST",
    	url : path,
    	data: JSON.stringify({
    		
    	}),
    	contentType : "application/json; charset=utf-8",
    	dataType : "json",
    	success : function(data){
    		console.log(data);
            if (!data.error) {
            	
                location.href = data.viewName;
            } else {
                mebx.showMessage({ title: "error", message: "error", type: "error" });
            }
        },
    	error : function(){
    		mebx.showMessage({title:"error", message:"error" ,type:"error"});
    		
    	}
    	
    });
}

</script>