<!-- /WEB-INF/www/layout/baseTemplate.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width"/>
    <title>MBX</title>
    <link href="/com/css/layout.css?20231209" rel="stylesheet">
    <link rel="stylesheet" href="/com/css/index.css?20231207">
	<link href="/com/assets/fontawesome/css/fontawesome.css?20231207" rel="stylesheet">
	<link href="/com/assets/fontawesome/css/all.css?20231207" rel="stylesheet">
	<link href="/com/assets/fontawesome/css/solid.css?20231207" rel="stylesheet">
	<link href="/com/assets/fontawesome/css/brands.css?20231207" rel="stylesheet">
	<link href="/com/assets/fontawesome/css/v4-font-face.css?20231207" rel="stylesheet">
    <script src="/com/js/jquery/jquery-3.6.0.min.js?20231207"></script>
    <script src="/com/js/login.js?20231207"></script>
</head>

<body>
 	<div class="main-layoutTag-body display-flex align-items-center flex-direction-column">
	        <tiles:insertAttribute name="header" />
		<div class="main-layoutTag-contents display-flex">
	        <tiles:insertAttribute name="sidebar" />
	        <tiles:insertAttribute name="body" />
		</div>
<%-- 	        <tiles:insertAttribute name="footer" /> --%>
    </div>
</body>
<script src="/com/js/common.js?20231207"></script>
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