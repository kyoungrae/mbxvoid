<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ include file="../layout/header.jspf"%>
<body>
    <div id="main_world_body" class="col-percent-100">
        <!-- TOP 영역 -->
        <section class="world_top col-percent-100 row-px-50 display-flex">
            <div class="world_top-box col-percent-90 display-flex">
                <div class="logo col-percent-10 text_align-center display-flex" >Logo</div>
                <div class="memu_info col-percent-70 display-flex" >
                    <dl class="menu_info_box col-percent-100 display-flex">
                        <li class="cursor-pointer">사이트 관리</li>
                        <li class="cursor-pointer">사용자 관리</li>
                        <li class="cursor-pointer">접속자 통계</li>
                        <li class="cursor-pointer">포트폴리오</li>
                        <li class="cursor-pointer">일정관리</li>
                    </dl>
                </div>
                <div class="user_info col-percent-20" >
                    <div class="user_info_box col-percent-50 row2-percent-100 float-right display-flex ">
                        <div class="user_info_icon"><i class="fa-solid fa-user"></i></div>
                        <div id="user_nm_box" class="user_nm">이경태</div>
                        <div class="user_info_box-sub display-flex">
                            <article class="my_info cursor-pointer display-flex">내정보1</article>
                            <article class="my_info cursor-pointer display-flex">내정보2</article>
                            <article class="my_info cursor-pointer display-flex">내정보3</article>
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
        <!-- TOP 영역 -->
        <!-- CONTEST 영역 -->
        <div class="section_body display-flex">
            <section class="world_content_body col-percent-100 display-flex flex-direction-column">
                <article class="col-percent-100 display-flex justift-content-flex-end">
                </article>
                <article class="col-percent-100 row-percent-40 display-flex">
                    <!-- 달력 -->
                    <div id="Mebx_Calender" class="col-percent-50"></div>
                    
                    <!-- 달력 -->
                </article>
                <article class="col-percent-100 row-percent-30">articel2</article>
                <article class="col-percent-100 row-percent-30">articel2</article>
            </section>
        </div>
        <!-- CONTEST 영역 -->

        <!-- FOOTER 영역 -->
        <%@ include file="../layout/footer.jspf"%>
        <!-- FOOTER 영역 -->
    </div>
</body>
<script src="/com/js/jquery/jquery-3.6.0.min.js"></script>
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

