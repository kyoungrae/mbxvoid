<!-- /WEB-INF/www/layout/baseTemplate.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
    <title>MBXVOID</title>
</head>
<link rel="stylesheet" href="/com/css/index.css">
<link href="/com/assets/fontawesome/css/fontawesome.css" rel="stylesheet">
<link href="/com/assets/fontawesome/css/all.css" rel="stylesheet">
<link href="/com/assets/fontawesome/css/solid.css" rel="stylesheet">
<link href="/com/assets/fontawesome/css/brands.css" rel="stylesheet">
<link href="/com/assets/fontawesome/css/v4-font-face.css" rel="stylesheet">
<script src="/com/js/jquery/jquery-3.6.0.min.js"></script>
<body>
 	<div id="main_world_body" class="col-percent-100">
	        <tiles:insertAttribute name="header" />
	
	        <tiles:insertAttribute name="body" />
	
	        <tiles:insertAttribute name="footer" />
    </div>
</body>
<script src="/com/js/login.js"></script>
<script src="/com/js/common.js"></script>
<script>
    $(function(){
        var mbx = new Mebx();
        mbx.Calender();

        $(".bar_box").on("click",function(){
            // user_info 박스 x 아이콘 애니메이션 효과
            mbx.infoBarTransition($(this));

            var data_info = $(this).data("infobox-show");
            if(!data_info){
                $(this).data("infobox-show",true);
                $(".user_info_box-sub").css("display","block");
            }else if(data_info){
                $(this).data("infobox-show",false);
                $(".user_info_box-sub").css("display","none");
            }
        })
    })
</script>
</html>