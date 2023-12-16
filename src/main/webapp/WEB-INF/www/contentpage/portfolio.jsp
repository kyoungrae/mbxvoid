<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <div class="main-body">
    <section class="main-content">
        <article class="main-content-title-box">
            <div class="main-content-path"><span>Project/OverView</span></div>
            <span class="main-content-title">OverView</span>
        </article>
        <article class="main-content-nav_tab">
            <ul class="main-content-nav display-flex">
                <li class="main-content-nav-items nav_active">
                    <a class="nav-link" href="javascript:void(0);">
                        Project
                        <span class="nav-total_text nav-link-sub"></span>
                    </a>
                </li>
                <li class="main-content-nav-items">
                    <a class="nav-link" href="javascript:void(0);">TimeLine</a>
                </li>
            </ul>
        </article>
        <article class="main-contents main-content-total-box display-flex align-items-center">
            <div class="main-content-total">
                <span class="total_text"></span>
            </div>
            <div class="col-percent-15">
                <span class="total_text_sub">Total project</span>
            </div>
            <div class="main-content-total-progressbar-box col-percent-100">
                <div class="main-content-total-progressbar-text">
                    <ul class="progressbar-box display-flex">
                        <li class="inprogress-text"><span>In progress</span><span>(1)</span></li>
                        <li class="completed-text"><span>Completed</span>(9)</li>
                        <li class="todo-text"><span>To do</span>(0)</li>
                    </ul>
                    <div class="main-content-total-progressbar display-flex">
                        <div class="inprogress col-percent-20"></div>
                        <div class="completed col-percent-80"></div>
                        <div class="todo"></div>
                    </div>
                </div>
            </div>
        </article>
        <article class="main-contents main-content-contents"> 
            <div class="main-content-contents-nav display-flex">
                <div class="col-percent-5"></div>
                <div class="project-status-box col-percent-95">
                    <ul class="project-status display-flex col-percent-100">
                        <li class="col-percent-30">PROJECT</li>
                        <li class="col-percent-20">COMPANY</li>
                        <li class="member-li col-percent-10">MEMBER</li>
                        <li class="col-percent-15">STATUS</li>
                        <li class="col-percent-25">COMPLETION</li>
                    </ul>
                </div>
            </div>
            <div class="append-main-content-projects"></div>
        <footer class="main-footer">
	        <div class="paging-area">
	        	<ul>
	        		<li class="pagging-btn"><a>&lt;</a></li>
	        	</ul>
	        	<ul>
	        		<li class="pagging-btn"><a>1</a></li>
	        	</ul>
	        	<ul>
	        		<li class="pagging-btn"><a>&gt;</a></li>
	        	</ul>
	        </div>
        </footer>
        </article>
	        <div class="main-btn-area col-percent-100">
	        	<div>
	        		<button type="button" class="main-btn add-popup_open">등록</button>
	        		<button type="button" class="main-btn modify-popup_open">수정</button>
	        		<button type="button" class="main-btn delete-popup_open" disabled='disabled'>삭제</button>
	        	</div>
	        </div>
    </section>
    <article id="View_popup" class="hidden" data-field="FORM">
        <div class="view_popup-body-box">
            <div class="view_popup-body row-percent-90">
                <div class="view_popup_title col-percent-100 row-percent-10">
                    <span id="view-prj_nm"></span>
                </div>
                <div class="display-flex flex-direction-column">
                    <div class="view_popup-contents">
                        <span class="view_popup-content_title">발주처</span>
                        <span id="view-company" class="view_popup-content_text"></span>
                    </div>
                    <div class="view_popup-contents view_popup_period">
                        <span class="view_popup-content_title">기간</span>
                        <span id="view-period" class="view_popup-content_text"></span>
                    </div>
                    <div class="view_popup-contents">
                        <span class="view_popup-content_title">참여인원</span>
                        <span id="view-member" class="view_popup-content_text"></span>
                    </div>
                </div>
                <div class="view_popup-contents">
                    <span class="view_popup-content_title">사용기술</span>
                    <span id="view-skill" class="view_popup-content_text dis"></span>
                </div>
                <div class="view_popup-contents">
                    <span class="view_popup-content_title">담당업무</span>
                    <span id="view-assigned_task" class="view_popup-content_text"></span>
                </div>
                <div class="view_popup-contents">
                    <span class="view_popup-content_title">내용</span>
                    <span id="view-cont" class="view_popup-content_text"></span>
                </div>
            </div>
            <footer class="view_popup-footer row-percent-10">
                <button class="btn popup_close" type="button"><i class="fa-solid fa-xmark">닫기</i></button>
            </footer>
        </div>
    </article>
    <article id="Add_popup" class="hidden" data-field="FORM">
		<div class="add_popup-body-box">
	    	<form id="Add_popup-form">
	            <div class="add_popup-body row-percent-90">
	                <div class="add_popup-contents">
	                	<span class="add_popup-content_title">프로젝트이름</span>
	                    <input id="add-prj_nm" data-field="prj_nm" name="prj_nm" autocomplete="off"/>
	                </div>
	                <div class="display-flex flex-direction-column">
	                    <div class="add_popup-contents">
	                        <span class="add_popup-content_title">발주처</span>
	                        <input id="add-company" data-field="company" name="company" class="add_popup-content_text" autocomplete="off"/>
	                    </div>
	                    <div class="add_popup-contents add_popup_period">
	                        <span class="add_popup-content_title">기간</span>
	                        <input type="date" id="add-from_period" data-field="period_from" name="period_from" class="add_popup-content_text" autocomplete="off"/>
	                        <span style="display:inline;"> ~ </span>
	                        <input type="date" id="add-to_period" data-field="period_to" name="period_to" class="add_popup-content_text" autocomplete="off"/>
	                    </div>
	                    <div class="add_popup-contents">
	                        <span class="add_popup-content_title">참여인원</span>
	                        <input type="number" id="add-member" data-field="member" name="member" class="add_popup-content_text" autocomplete="off"/>
	                    </div>
	                </div>
	                <div class="add_popup-contents">
	                    <span class="add_popup-content_title">사용기술</span>
	                    <span id="view-skill" class="view_popup-content_text dis"></span>
	                    <input id="add-skill" data-field="skill" name="skill" class="add_popup-content_text dis" autocomplete="off"/>
	                </div>
	                <div class="add_popup-contents">
	                    <span class="add_popup-content_title">담당업무</span>
	                    <input id="add-assigned_task" data-field="assigned_task" name="assigned_task" class="add_popup-content_text" autocomplete="off"/>
	                </div>
	                <div class="add_popup-contents">
	                    <span class="add_popup-content_title">내용</span>
	                    <input id="editor" data-field="cont" name="cont" class="add_popup-content_text" autocomplete="off"/>
	                </div>
	            </div>
	            <footer class="add_popup-footer row-percent-10">
	                <button class="btn add-popup_save" type="button"><i class="fa-solid fa-check">등록</i></button>
	                <button class="btn popup_close" type="button"><i class="fa-solid fa-xmark">닫기</i></button>
	            </footer>
	        </form>
		</div>
    </article>
</div>
<script>

$(document).ready(function() {
	var mebx = new Mebx();
	var data_obj = [];
    searchContents();
    init();
})
function init(){
	//Grid click event
	
	//tab 활성화 이벤트  
	mebx.nav_tab();
	
	//팝업 닫기 클릭  팝업 이벤트 
	mebx.btn_popup_close();
	
	//등록팝업 버튼 클릭 이벤트
	$(".add-popup_open").click(function(){
		addPopup();
	});
	
	//등록 버튼 이벤트 
	$(".add-popup_save").click(function(){
		var addFormParam = mebx.AddFormInputData("Add_popup-form");
		savePrject(addFormParam);
		location.reload();
		mebx.popup_close();
	});
}

function searchContents(){
    $.ajax({
    type: "POST",
    url: "/project.do?command=searchProject",
    data: JSON.stringify({}),
    contentType: "application/json; charset=utf-8",
    dataType: "json"
})
    .done(function(data) {
        // Success callback
        data_obj = data;
        var contentsHtml = "";
        for (var i = 0; i < data.length; i++) {
        	if(data[i].status == "Inprogress"){
        		status = "inprogress-text col-percent-15";
        		statusbar = "inprogress"+" col-percent-"+data[i].completion;
        	}else if(data[i].status == "Completed"){
        		status = "completed-text col-percent-15";
        		statusbar = "completed"+" col-percent-"+data[i].completion;
        	}
            contentsHtml += '<div id="row'+i+'" class="row main-content-projects display-flex cursor-pointer" data-prj-no="'+data[i].prj_no+'"">'
                            + '<div class="cursor-pointer col-percent-5"><span class="view-popup_open" data-prj-no="'+data[i].prj_no+'"><i class="fa-solid fa-magnifying-glass"></i></span></div>'
                            + '<div class="project-status-box col-percent-95">'
                                + '<ul class="project-status display-flex col-percent-100">'
                                    + '<li class="col-percent-30">'+data[i].prj_nm+'</li>'
                                    + '<li class="col-percent-20"><span>'+data[i].company+'</span></li>'
                                    + '<li class="col-percent-10"><span>'+data[i].member+'</span></li>'
                                    + '<li class="'+status+'"><span>'+data[i].status+'</span></li>'
                                    + '<li class="col-percent-25 display-flex align-items-center">'
                                        + '<span class="display-block col-percent-30">'+data[i].completion+'%</span>'
                                        + '<div class="col-percent-70">'
                                            + '<div class="'+statusbar+'"></div>'
                                        + '</div>'
                                    + '</li>'
                                + '</ul>'
                            + '</div>'
                        + '</div>';
        }
        $(".total_text").append(data.length);
        $(".nav-total_text").append(data.length);
        $(".append-main-content-projects").append(contentsHtml);
            openPopup(data);
            mebx.rowGridClickEvent();
    })
    .fail(function(jqXHR, textStatus, errorThrown) {
        // Error callback
        console.error("Error:", textStatus, errorThrown);
    });
}
function savePrject(ob){
	$.ajax({
	    type: "POST",
	    url: "/project.do?command=saveProject",
	    data: JSON.stringify({
	    	prj_no : ob.prj_no,
			prj_nm : ob.prj_nm,
			company : ob.company,
			member : ob.member,
			status : ob.status,
			completion : ob.completion,
			file_nm : ob.file_nm,
			file_path : ob.file_path,
			contribution : ob.contribution,
			skill : ob.skill,
			assigned_task : ob.assigned_task,
			cont : ob.cont,
			period_from : ob.period_from,
			period_to : ob.period_to
	    }),
	    contentType: "application/json; charset=utf-8",
	    dataType: "json"
	})
	    .done(function(data) {
	        // Success callback
	    })
	    .fail(function(jqXHR, textStatus, errorThrown) {
	        // Error callback
	    });
}
function openPopup(data){
    $(".view-popup_open").click(function(){
        var prj_no = $(this).data("prj-no");
        for(var i =0; i< data.length; i++){
            if(data[i].prj_no == prj_no){
            	if(data[i].period_to == null){
            		data[i].period_to = "진행중";
            	}
                $("#view-prj_nm").html(data[i].prj_nm);
                $("#view-company").html(data[i].company);
                $("#view-period").html(data[i].period_from+" ~ "+data[i].period_to);
                $("#view-member").html(data[i].member);
                $("#view-contribution").html(data[i].contribution+"%");
                $("#view-skill").html(data[i].skill);
                $("#view-assigned_task").html(data[i].assigned_task);
                $("#view-cont").html(data[i].cont);
                break;
            }
        }
        if($("#View_popup").hasClass("hidden")){
            $("#View_popup").removeClass("hidden");
        }else{
            $("#View_popup").addClass("hidden");
        }

    })
}
function addPopup(){
	if($("#Add_popup").hasClass("hidden")){
        $("#Add_popup").removeClass("hidden");
    }else{
        $("#Add_popup").addClass("hidden");
    }
	
}
function MyCustomUploadAdapterPlugin(editor) {
    editor.plugins.get('FileRepository').createUploadAdapter = (loader) => {
        return new UploadAdapter(loader)
    }
}

ClassicEditor.create(document.querySelector('#editor'), {
	language:'ko',
	extraPlugins: [MyCustomUploadAdapterPlugin]
}).then(editor => {
    window.editor = editor;
}).catch( error => {
    console.error( error );
});

			 
</script>