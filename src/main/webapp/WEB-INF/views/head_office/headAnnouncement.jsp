
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        #form {
            width: 100%;
            padding: 30px;
        }

        #form-top {
            display: flex;
            justify-content: space-between;
            align-items: end;
        }

        #form_name {
            font-size: 40px;
            font-weight: bold;
            padding: 10px;
        }

        #form-top-btn {
            padding-bottom: 10px;
        }

        #top-manu {
            border-top: 3px solid black;
            height: 8%;
            background-color: #D9D9D9;
            display: flex;
            justify-content: right;
            align-items: center;
        }

        #top_serch {
            display: flex;
            justify-content: right;
            padding-right: 61px;
            width: 35%;
        }

        #table-manu {
            height: 75%;
            width: 100%;
            border-top: 3px solid black;
        }

        #table1 {
            width: 100%;
            text-align: center;
            table-layout: auto;
        }

        #table1 thead {
            height: 30px;
            background-color: #D9D9D9;
            border-bottom: 3px solid #939393;
        }

        #table1 tbody tr {
            border-bottom: 3px solid #939393;
            height: 50px;
        }

        #footer {
            border-top: 3px solid #939393;
            background-color: #D9D9D9;
            height: 8%;
            border-bottom: 3px solid black;
            display: flex;
            justify-content: center;
        }

        #main-pageing img {
            width: 70px;
            padding: 10px;
        }

        #main-pageing img:nth-of-type(2) {
            transform: rotate(180deg);
        }

        #main-pageing button {
            border: #B4B4B4 solid 3px;
            background: white;
            color: #B4B4B4;
            font-weight: bold;
            margin: 5px;
        }

        #main-pageing button:hover {
            border: #3C3C3C solid 3px;
            color: #3C3C3C;
            font-weight: bold;
        }

        /*
        -----------------------
        모달창
         */
        .modal-header {
            display: flex;
            justify-content: right !important;
            background-color: #D9D9D9;
        }

        .modal-content {
            height: 90%;
        }

        .modal-body {
            padding: 10px 50px !important;
        }

        .modal-footer {
            background-color: #D9D9D9;
        }

        #x_img {
            width: 15px;
            height: 20px;
        }

        #btn-close-modal {
            border: none;
            background: none;
        }

        #modal-body-top {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid black;
            height: 5%;
            font-weight: bold;
        }

        #modal-body-top input {
            height: 90%;
            width: 90%;
        }

        #textbox {
            width: 100%;
            height: 95%;
        }

        /*
        -----------------------
        내용모달창
         */

        .detail-modal-header {
            height: 5%;
            background-color: #D9D9D9;
        }

        .modal-body {
            height: 40%;
        }

        #detail-x_img {
            width: 15px;
            height: 20px;
        }

        #detail-btn-close-modal {
            border: none;
            background: none;
        }

        #detail-modal-header {
            height: 100%;
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding-left: 30px;
            padding-right: 15px;
        }

        #detail-modal-body-top {
            height: 8%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 3px solid #D9D9D9;
        }

        #comment-btn {
            border-bottom: 3px solid #B4B4B4;
            border-top: 3px solid #B4B4B4;
            height: 5%;
            background-color: #D9D9D9;
        }

        #comment {
            height: 30%;
            width: 100%;
            background-color: #D9D9D9;
            display: flex;
            justify-content: center;
        }

        #comment-detail {
            width: 50%;
        }

        #comment-detail input {
            border: 2px solid black;
            border-radius: 5px;
            width: 90%;
        }

        #comment-table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0px 5px; /* 상하 간격을 10px로 설정 */
        }

        #comment-table td {
            border-bottom: 3px solid #B4B4B4;
            padding-bottom: 5px;
        }

        #modal-footer {
            border-top: 3px solid #B4B4B4;
            height: 8%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #modal-pageing {
            margin: 0;
        }

        #modal-pageing img {
            width: 30px;
        }

        #modal-pageing img:nth-of-type(2) {
            transform: rotate(180deg);
        }

        #modal-pageing button {
            width: 30px;
            height: 30px;
            border: #B4B4B4 solid 3px;
            background: white;
            color: #B4B4B4;
            font-weight: bold;
            margin: 0px;
            padding: 0px;
        }

        #modal-pageing button:hover {
            border: #3C3C3C solid 3px;
            color: #3C3C3C;
            font-weight: bold;
        }

        /*
        -----------------------
        모달수정창
         */
        .modal-header {
            display: flex;
            justify-content: right !important;
            background-color: #D9D9D9;
        }

        .modal-content {
            height: 90%;
        }

        .modal-body {
            padding: 10px 50px !important;
        }

        .modal-footer {
            background-color: #D9D9D9;
        }

        #modify-x_img {
            width: 15px;
            height: 20px;
        }

        #modify-btn-close-modal {
            border: none;
            background: none;
        }

        #modify-modal-body-top {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid black;
            height: 5%;
            font-weight: bold;
        }

        #modify-modal-body-top input {
            height: 90%;
            width: 90%;
        }

        #modify-textbox {
            width: 100%;
            height: 95%;
        }
    </style>
</head>
<body>
<jsp:include page="../common/header2.jsp"/>
<div id="form">
    <div id="form-top">
        <div id="form_name">
            공지 사항
        </div>
        <div id="form-top-btn">
            <button id="announcement-add" data-bs-toggle="modal" data-bs-target="#staticBackdrop">글쓰기</button>
        </div>
    </div>

    <div id="top-manu">
        <div id="top_serch">
            <form>
                <select>
                    <option>제목</option>
                    <option>아이디</option>
                </select>
                <input type="text">
                <input type="submit" value="검색">
            </form>
        </div>
    </div>
    <div id="table-manu">
        <table id="table1">
            <colgroup>
                <col style="width: 5%;">
                <col style="width: 35%;">
                <col style="width: 10%;">
                <col style="width: 10%;">
            </colgroup>
            <thead>
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>아이디</th>
                <th>날짜</th>

            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>집에가고싶어요</td>
                <td>강남점</td>
                <td>240</td>
            </tr>
            <tr>
                <td>2</td>
                <td>안돼 못가</td>
                <td>강남점</td>
                <td>240</td>
            </tr>
            <tr>
                <td>3</td>
                <td>넌 남아서 해야지 어딜 도망갈려고</td>
                <td>강남점</td>
                <td>240</td>
            </tr>
            </tbody>
        </table>
    </div>
    <div id="footer">
        <div id="main-pageing">
            <img src="/resources/common/공통_페이징바화살표.png">
            <button type="button" class="btn btn-outline-secondary">1</button>
            <button type="button" class="btn btn-outline-secondary">2</button>
            <button type="button" class="btn btn-outline-secondary">3</button>
            <button type="button" class="btn btn-outline-secondary">4</button>
            <button type="button" class="btn btn-outline-secondary">5</button>
            <button type="button" class="btn btn-outline-secondary">6</button>
            <button type="button" class="btn btn-outline-secondary">7</button>
            <button type="button" class="btn btn-outline-secondary">8</button>
            <button type="button" class="btn btn-outline-secondary">9</button>
            <button type="button" class="btn btn-outline-secondary">10</button>
            <img src="/resources/common/공통_페이징바화살표.png">
        </div>
    </div>

    <!--start point-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
            integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
            crossorigin="anonymous"></script>

    <!--Modal -->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                            id="btn-close-modal">
                        <img src="/resources/common/공통_Icon.png" id="x_img">
                    </button>
                </div>
                <div class="modal-body">
                    <!--모달 내용-->
                    <div id="modal-body-top">
                        <input type="text" placeholder="제목을 입력하세요">
                        <p>2025.04.01</p>
                    </div>
                    <textarea id="textbox" placeholder="내용을 입력하세요(1000자 이하)">

            </textarea>
                </div>
                <div class="modal-footer">
                    <button>완료</button>
                </div>
            </div>
        </div>
    </div>

    <<!-- detail-Modal -->
    <div class="modal fade" id="detail-staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="detail-modal-header">
                    <div id="detail-modal-header">
                        <p>2025-03-20/09:21:08</p>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                                id="detail-btn-close-modal">
                            <img src="/resources/common/공통_Icon.png" id="detail-x_img">
                        </button>
                    </div>
                </div>

                <div class="modal-body" id="detail-modal-body">
                    <div id="detail-modal-body-top">
                        <p>3월28일 업데이트</p>
                        <div>
                            <button>수정</button>
                            <button>삭제</button>
                        </div>
                    </div>
                    <div>
                        <p>업데이트 내용이다 다들 확인해라 안했으면 큰일난다잉</p>
                    </div>
                </div>
                <div id="comment-btn">
                    <button>∧댓글</button>
                </div>
                <div id="comment">
                    <div id="comment-detail">
                        <div>
                            <input type="text">
                            <button>작성</button>
                        </div>
                        <div id="comment-table-box">
                            <table id="comment-table">
                                <tr>
                                    <th>
                                        강남점 25-03-20/09:31:20
                                    </th>
                                </tr>
                                <tr>
                                    <td>
                                        확인
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        잠실점 25-03-20/09:31:20
                                    </th>
                                </tr>
                                <tr>
                                    <td>
                                        확인
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="modal-footer" id="modal-footer">
                    <div id="modal-pageing">
                        <img src="/resources/common/공통_페이징바화살표.png">
                        <button type="button" class="btn btn-outline-secondary">1</button>
                        <button type="button" class="btn btn-outline-secondary">2</button>
                        <button type="button" class="btn btn-outline-secondary">3</button>
                        <button type="button" class="btn btn-outline-secondary">4</button>
                        <button type="button" class="btn btn-outline-secondary">5</button>
                        <button type="button" class="btn btn-outline-secondary">6</button>
                        <button type="button" class="btn btn-outline-secondary">7</button>
                        <button type="button" class="btn btn-outline-secondary">8</button>
                        <button type="button" class="btn btn-outline-secondary">9</button>
                        <button type="button" class="btn btn-outline-secondary">10</button>
                        <img src="/resources/common/공통_페이징바화살표.png">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--modify-Modal -->
    <div class="modal fade" id="modify-staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"
                            id="modify-btn-close-modal">
                        <img src="/resources/common/공통_Icon.png" id="modify-x_img">
                    </button>
                </div>
                <div class="modal-body">
                    <!--모달 내용-->
                    <div id="modify-modal-body-top">
                        <input type="text" placeholder="제목을 입력하세요">
                        <p>2025.04.01</p>
                    </div>
                    <textarea id="modify-textbox" placeholder="내용을 입력하세요(1000자 이하)">업데이트 내용이다 다들 확인해라 안했으면 큰일난다.</textarea>
                </div>
                <div class="modal-footer">
                    <button>완료</button>
                </div>
            </div>
        </div>
    </div>

    <script>

        // 테이블의 모든 행에 클릭 이벤트 추가
        document.querySelectorAll('#table1 tbody tr').forEach(row => {
            row.addEventListener('click', function () {
                // 모달을 띄우기 위한 코드
                var myModal = new bootstrap.Modal(document.getElementById('detail-staticBackdrop'));
                myModal.show(); // 모달 열기
            });
        });

        document.querySelectorAll('#detail-modal-body button').forEach(button => {
            if (button.textContent === '수정') {
                button.addEventListener('click', function () {
                    // 기존 모달을 숨기기
                    var myDetailModal = bootstrap.Modal.getInstance(document.getElementById('detail-staticBackdrop'));
                    myDetailModal.hide(); // 기존 모달 숨기기

                    // 새로운 모달 띄우기 (새로운 모달 ID와 내용으로 변경 가능)
                    var newModal = new bootstrap.Modal(document.getElementById('modify-staticBackdrop'));
                    newModal.show(); // 새로운 모달 열기
                });
            }
        });
    </script>
</div>
</body>
</html>
