<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="section_body display-flex">
	<section class="world_content_body col-percent-100 display-flex flex-direction-column">
		<article class="col-percent-100 display-flex justift-content-flex-end">
        </article>
        <article class="col-percent-100  display-flex justify-content-center flex-direction-column align-items-center margin-top-10percent">
                    <div class="pf-title col-percent-20 row-percent-20  display-flex justify-content-center">
                        <p>VOID</p>
                    </div>
                    <div class="pf-title-content col-percent-50 row-percent-20  display-flex justify-content-center">
                        <p class="word-break-keep-all">끊임없는 발전이 반환 없이 펼쳐지는 여정이며,<br>어떤 공백도 나의 성장을 막을 수 없다.<br> 코드의 공백을 나만의 경험으로 메우며 더 나은 나로 성장할 것이다.</p>
                    </div>
                    <div class="pf-skills col-percent-80 display-flex flex-direction-column margin-top-10percent">
                        <div class="pf-content-title pf-skills-title row-percent-30">
                            <p>Skills</p>
                        </div>
                        <div class="pf-skills-box display-flex">
                            <div class="pf-skills-box-title col-percent-20">
                                <div class="pf-skills-subtitle">Backend</div>
                                <div class="pf-skills-content-box">
                                    <div class="pf-skills-content">
                                        JAVA
                                    </div>
                                    <div class="pf-skills-content">
                                        Spring MVC
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                </div>
                            </div>
                            <div class="pf-skills-box-title col-percent-20">
                                <div class="pf-skills-subtitle">Backend</div>
                                <div class="pf-skills-content-box">
                                    <div class="pf-skills-content">
                                        JAVA
                                    </div>
                                    <div class="pf-skills-content">
                                        Spring MVC
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                </div>
                            </div>
                            <div class="pf-skills-box-title col-percent-20">
                                <div class="pf-skills-subtitle">Backend</div>
                                <div class="pf-skills-content-box">
                                    <div class="pf-skills-content">
                                        JAVA
                                    </div>
                                    <div class="pf-skills-content">
                                        Spring MVC
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                    <div class="pf-skills-content">
                                        JSTL
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
					<div class="pf-wep col-percent-80 display-flex flex-direction-column align-items-center margin-top-10percent">
						 <div class="pf-content-title pf-wep-title row-percent-100 col-percent-90">
						 	<p></p>
						 </div>
                   </div>
                </article>
    </section>
</div>
<script>
window.onload = function(){
	searchContents();
}
function searchContents(){
	var mebx = new Mebx();
	var path = '/contents.do?command=searchContentsInfo';
    $.ajax({
    	type:"POST",
    	url : path,
    	data: JSON.stringify({
    		menu_id : "MN001"
    	}),
    	contentType : "application/json; charset=utf-8",
    	dataType : "json",
    	success : function(data){
    		console.log(data)
    		
    		insertContentLayer(data)
    	},
    	error : function(){
    		mebx.showMessage({title:"error", message:"error" ,type:"error"});
    		
    	}
    	
    });
}

function insertContentLayer(cont){
	var innerHtml = "";
	var contentTitle = "";
	for(var i = 0; i < cont.length; i++){
		if("MN001" == cont[i].menu_id){
			contentTitle = cont[0].content_title
			innerHtml += '<div class="pf-common-content display-flex justify-content-center">'
									 +'<div class="pf-wep-box col-percent-90 row-percent-100">'
										 +'<div class="pf-wep-box-title col-percent-100">'
									 		+'<p>'+cont[i].content_sub_title+'</p>'
										 +'</div>'
									 	+'<div class="pf-wep-box-layer pf-wep-box-date col-percent-100">'
										 +'<div class="pf-wep-date-title col-percent-50">'
											 +'<p>'+cont[i].content_parts_1+'</p>'
										 +'</div>'					 
										 +'<div class="pf-wep-date col-percent-50">'
										 	+'<p>'+cont[i].content_sub_parts_1+'</p>'
										 +'</div>'
									 	+'</div>'
										 +'<div class="pf-wep-box-layer pf-wep-box-work col-percent-100">'
										 	+'<div class="pf-wep-work-title col-percent-50">'
										 		+'<p>'+cont[i].content_parts_2+'</p>'
										 	+'</div>'
											 +'<div class="pf-wep-work col-percent-50">'
											 	+'<p>'+cont[i].content_sub_parts_2+'</p>'
											 +'</div>'
										 +'</div>'
										 +'<div class="pf-wep-box-layer pf-wep-box-frame-work col-percent-100">'
										 	+'<div class="pf-wep-frame-work-title col-percent-50">'
										 		+'<p>'+cont[i].content_parts_3+'</p>'
										 	+'</div>'
										 	+'<div class="pf-wep-frame-work col-percent-50">'
										 		+'<p>'+cont[i].content_sub_parts_3+'</p>'
										 	+'</div>'
										 +'</div>'
										 +'<div class="pf-wep-box-contentlayer pf-wep-box-content">'
										 	+'<div class="pf-wep-content-title">'
										 		+'<p>[ 내용 ]</p>'
										 	+'</div>'
										 	+'<div class="margin-top-10px pf-wep-content word-break-keep-all">'
										 		+'<p>'+cont[i].content_1+'</p>'
										 	+'</div>'
										 +'</div>'
										 +'<div class="pf-wep-box-contentlayer pf-wep-box-Realization">'
										 	+'<div class="pf-wep-Realization-title">'
										 		+'<p>[ 느낀점 ]</p>'
										 	+'</div>'
										 	+'<div class="margin-top-10px pf-wep-Realization word-break-keep-all">'
										 		+'<p>'+cont[i].content_2+'</p>'
										 	+'</div>'
										 +'</div>'
									 	+'</div>'
								 +'</div>'
							
			}
	}
	
	$(".pf-wep").append(innerHtml);
	$(".pf-wep-title p").html(contentTitle);
}

</script>