<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<nav class="header-nav col-percent-100  display-flex align-items-center">
    <div class="header-logo_text col-percent-15">MBXVOID</div>
    <div class="col-percent-70"></div>
    <div class="header-user_info-box col-percent-15 display-flex align-items-center justify-content-flex-end">
        <div class="header-user_info display-flex align-items-center justify-content-center"></div>
    </div>
</nav>

<script>
window.onload = function(){
}
function goUrl(menuName){
	window.location.href = "/page.do?command=movePage&menu_nm="+menuName;
}
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