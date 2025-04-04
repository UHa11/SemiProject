<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>loginForm</title>
        <style>
            * {
                font-family: MalgunGothic, '맑은 고딕', '돋움', Dotum, AppleGothic, Sans-serif, Arial;
                font-size: 12px;
                line-height: 1;
                color: #333;
                font-weight: 600;
            }

            body {
                max-width: 100%;
                background-color: #477154;
                overflow: hidden
            }
            button{
                cursor: pointer;
            }
            button:active{
                margin: 1%;
                filter: brightness(85%);
            }

            .box {
                max-width: 100%;
                margin: auto;
            }

            .login {
                /*가로길이로 로그인입력창크기 수정가능(나머지는 건드리지마세요)*/
                width: 580px;
                height: min-content;
                display: grid;
                grid-template-columns: 50% 50%;
                margin: 18vh auto;
            }

            .login>* {
                width: 100%;
            }

            .login>div {
                width: 100%;
                display: flex;
                display: grid;
                flex-direction: column;
                grid-template-rows: 76% 24%;
            }

            .login>div>div>* {
                font-size: large;
            }

            .login>div>div>button,
            input {
                border: 1px solid white;
                border-radius: 10px;
            }

            #input {
                display: grid;
                grid-template-rows: 1fr 2fr 1fr 2fr;
                padding: 20% 5% 0 5%;
            }

            #input>* {
                margin: 0 0 5%;
            }

            #input>p {
                margin-left: 5%;
                align-self: self-end;
                color: white;
            }

            #button {
                display: grid;
                grid-template-columns: 48% 48%;
                gap: 4%;
                padding: 0 5% 10% 5%;
            }

            #button-2 {
                background-color: #FFC000;
                border: 1px solid #FFC000;
            }
            #modalBackground{
                display: none;
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                align-items: center;
                overflow: auto;
                background-color: rgba(0, 0, 0, 0.500);
            }
            #enrollModal {
                /*모달창 크기 width로 조절*/
                width: 700px;
                height: auto;
                border-radius: 10px;
                background-color: white;
                margin: 0 auto;
            }
        </style>
    </head>

    <body>
        <form action="">
            <div id="modalBackground">
                <div id="enrollModal">
                    <jsp:include page="loginEnrollForm.jsp" />
                </div>
            </div>
            <div class="box">
                <div class="login">
                    <img src="../../../resources/common/로그인로고.png" alt="">
                    <div>
                        <div class="login-1" id="input">
                            <p>아이디</p>
                            <input type="text">
                            <p>비밀번호</p>
                            <input type="text">
                        </div>
                        <div class="login-1" id="button">
                            <button type="submit" id="button-1">로그인</button>
                            <button id="button-2" onclick="showEnrollModal()">회원가입</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <script>
            function showEnrollModal() {
                document.getElementById("modalBackground").style.display = "flex";
            }

            const screenWidth = window.screen.width;
            const screenHeight = window.screen.height;
            const box = document.querySelector('.box');
            box.style.width = screenWidth * 0.98 + 'px';
            box.style.height = screenHeight * 0.6 + 'px';
        </script>

    </body>

    </html>