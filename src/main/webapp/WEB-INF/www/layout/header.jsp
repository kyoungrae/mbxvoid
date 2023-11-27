<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
 <section class="world_top col-percent-100 row-px-50 display-flex">
            <div class="world_top-box col-percent-90 display-flex">
                <div class="logo col-percent-15 text_align-center display-flex" ><a href="/page.do?command=goMainPage">HOME</a></div>
                <div class="memu_info col-percent-70 display-flex" >
                    <ul class="menu_info_box col-percent-100 display-flex">
                    	<li class="cursor-pointer"><a href="/page.do?command=movePage&menu_nm=portfolio">경력기술서</a></li>
<!--                     	<li class="cursor-pointer"><a href="/page.do?command=movePage&menu_nm=schedule">일정</a></li> -->
                    </ul>
                </div>
                <div class="user_info col-percent-15">
                    <div class="user_info_box col-percent-50 row2-percent-100 float-right display-flex ">
                        <div class="user_info_icon"><i class="fa-solid fa-user"></i></div>
                        <div id="user_nm_box" class="user_nm">guest</div>
                        <div class="user_info_box-sub display-flex">
<!--                             <article class="my_info cursor-pointer display-flex">내정보1</article> -->
<!--                             <article class="my_info cursor-pointer display-flex">내정보2</article> -->
                            <article id="logout" class="my_info cursor-pointer display-flex">로그아웃</article>
                        </div>
                        <div class="bar_box cursor-pointer" data-active-click="false"  data-infobox-show="false">
                            <div class="bar_01"></div>
                            <div class="bar_02"></div>
                            <div class="bar_03"></div>
                        </div>
                    </div>
                </div>
            </div>
</section>

<script>
window.onload = function(){
// 	searchMenu();
}
$("#logout").click(function(){
	logout();
})
function searchMenu(){
	var mebx = new Mebx();
	var path = '/menu.do?command=searchMenuInfo';
    $.ajax({
    	type:"POST",
    	url : path,
    	data: JSON.stringify({
    		
    	}),
    	contentType : "application/json; charset=utf-8",
    	dataType : "json",
    	success : function(data){
    		var length = data.length;
    		var menuList = "";
    		for(var i = 0; i<length; i++){
    			menuList += '<li class="cursor-pointer"><a href="/page.do?command=movePage&menu_nm='+data[i].menu_file_nm+'">'+data[i].menu_nm+'</a></li>';
    		}
    			$(".menu_info_box").append(menuList);
    	},
    	error : function(){
    		mebx.showMessage({title:"error", message:"error" ,type:"error"});
    		
    	}
    	
    });
}
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