<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<link rel="stylesheet" href="/com/css/index.css">
<link href="/com/assets/fontawesome/css/fontawesome.css" rel="stylesheet">
<link href="/com/assets/fontawesome/css/all.css" rel="stylesheet">
<link href="/com/assets/fontawesome/css/solid.css" rel="stylesheet">
<link href="/com/assets/fontawesome/css/brands.css" rel="stylesheet">
<link href="/com/assets/fontawesome/css/v4-font-face.css" rel="stylesheet">


<body>
    <div id="world_body" class="display-flex">
        <section class="login_box-section display-flex">
            <article class="login_box display-flex">
                <div class="login_box-layer display-flex">
                    <div class="user_box-title display-flex">
                        <h1>Sign In to Login</h1>
                    </div>
                    <div class="user_box-loginButton-box display-flex row-percent-30 col-percent-60">
                        <div class="loginButton-box-fram input_target-basic_style display-flex row-percent-40 col-percent-100">
                            <div>
                                <span class="login_span" data-login-active="false">아이디를 입력해 주세요.</span>
                                <form id="LOGIN_FORM">
                                    <input id="login_id" class="required hidden row-percent-80 input_basic_placeholder" type="text"  autocomplete="off">
                                </form>
                                </div>
                                <button type="button" id="icon-sign_in-button">
                                    <label for="icon-sign_in-button"><i class="fas fa-chevron-circle-right"></i></label>
                                </button>
                            </div>
                        </div>
                </div>
            </article>
        </section>
    </div>
</body>
<script src="/com/js/jquery/jquery-3.6.0.min.js"></script>
<script src="/com/js/login.js"></script>
<script src="/com/js/common.js"></script>
</html>