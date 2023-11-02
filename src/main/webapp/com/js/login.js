$(function(){
    var mebx = new Mebx();

    // 로그인 박스 입력시 아이콘 색 변경
    $(".loginButton-box-fram").keyup(function(){
        
        var id = $("#login_id").val();
        if("undefined" === typeof id || "" === id || null === id){
            $(".fa-chevron-circle-right").css({'color':'#999'});
            $("label[for='icon-sign_in-button']").removeClass("cuser-pointer")
        }else{
            $(".fa-chevron-circle-right").css({'color':'#5771d2'});
            $("label[for='icon-sign_in-button']").addClass("cuser-pointer")
        }
    })
function loginactive(){
        var dataStat = $(".login_span").data("login-active");
        if(false === dataStat){ // 로그인 버튼이 활성화 됐을때 로직 수행
             $(".login_span").css( {"margin-top": "0px","font-size": "10px"});
            $(".input_target-basic_style").css({"border":"1px solid #7ebaff"});
            $("#login_id").removeClass("hidden");
            $("#login_id").focus();
            loginbuttonClickEvent(); // 로그인 이벤트 발생
        }else if(true === dataStat){
            $(".login_span").css( {"margin-top": "0px","font-size": "12px"});
            $(".input_target-basic_style").css({"border":"1px solid #999"});
            $("#login_id").addClass("hidden");
        }
}
   $(document).on("click",function(e){
        var id = $("#login_id").val();
        //아이디 입력 박스 노출
        if($(e.target).closest(".login_span").length){
            $(".login_span").data("login-active",false);
            loginactive();
        //아이디 입력 박스 숨김
        }else if(!$(e.target).closest("#login_id").length && !$(e.target).closest("#icon-sign_in-button").length){
            if("undefined" === typeof id || "" === id || null === id){
                $(".login_span").data("login-active", true);
                loginactive();
            }
            return;
        }
    })

    function loginbuttonClickEvent(){
        $("#icon-sign_in-button").off().on("click",function(){
            console.log(logInValidationCheck())
            if(logInValidationCheck()){
            }else{
                mebx.showMessage({"title":"알림","message":"아이디를 입력해주세요.","type":"error"});
            }
        })
    }
    //로그인 유효성 검사
    function logInValidationCheck(){
        var requiredInputs = $("#LOGIN_FORM input.required");
        var isValid = true;
        requiredInputs.each(function(){
            var inputValue = $(this).val();
            if(inputValue.trim() === ""){
                isValid = false;
                return false;
            }
        })
        return isValid;
    };
})