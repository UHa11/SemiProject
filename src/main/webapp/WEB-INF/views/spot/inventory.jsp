<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ page
contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <link rel="stylesheet" href="/resources/css/btn.css" />
    <style>
      .waper {
        width: 100%;
        padding: 50px;
      }
      .main_name {
        font-weight: bolder;
        font-size: 50px;
        margin: 0;
      }
      #top-manu {
        display: flex;
        justify-content: space-between;
      }
      #top-reft {
        background-color: #d9d9d9;
        width: 30%;
      }
      #top-reft1 {
        background-color: white;
        display: flex;
        align-content: center;
        align-items: center;
        width: 100%;
        border-bottom-right-radius: 20px;
        padding-bottom: 10px;
      }

      #top-right1 {
        background-color: #d9d9d9;
        width: 70%;
        display: flex;
        justify-content: space-around;
        align-items: center;
        border-top-left-radius: 20px;
        border-top-right-radius: 20px;
      }

      #right-check {
        display: flex;
        padding: 5px;
        width: 15%;
        justify-content: center;
        font-weight: bold;
      }
      /* 추가 */
      #right-check p {
        padding-left: 5px;
      }
      .selectbox select {
        color: #8a8a8a;
      }
      .selectbox option {
        color: black;
      }

      /* #category-select{
      border-radius: 10px;
    } */
      #search-box {
        width: 70%;
        display: flex;
        justify-content: center;
      }

      #search-box input:nth-child(1) {
        width: 80%;
        padding: 10px;
      }

      #table1 td img {
        width: 20px;
      }
      #table1 td:nth-child(5) {
        font-weight: bold;
        color: red;
      }

      #top-reft p {
        padding-left: 15px;
      }
      #main {
        background-color: #d9d9d9;
        width: 100%;
        height: 90%;
        border-top-left-radius: 20px;
        border-bottom-left-radius: 20px;
        border-bottom-right-radius: 20px;
        padding: 50px 50px 100px;
      }
      #main-in {
        background-color: white;
        width: 100%;
        height: 100%;
        border-radius: 20px;
        padding: 50px;
      }
      @media screen and (max-width: 1800px) {
        #main-in {
          overflow-x: auto;
        }
      }
      #main-pageing {
        padding-top: 10px;
        display: flex;
        justify-content: center;
        align-items: center;
      }
      #table1 {
        text-align: center;
        outline: none;
        width: 100%;
        table-layout: auto;
      }
      #main-pageing img {
        width: 70px;
        padding: 10px;
      }
      #main-pageing img:nth-of-type(2) {
        transform: rotate(180deg);
      }

      #main-pageing button {
        border: #b4b4b4 solid 3px;
        background: white;
        color: #b4b4b4;
        font-weight: bold;
        margin: 5px;
      }
      #main-pageing button:hover {
        border: #3c3c3c solid 3px;
        color: #3c3c3c;
        font-weight: bold;
      }

      #btn-close-modal {
        width: 20px;
        height: 20px;
        display: flex;
        justify-content: center;
        align-items: center;
      }
      #x_img {
        width: 10px;
        height: 10px;
      }

      #footer-btn {
        width: 66%;
        margin-right: 16%;
        background-color: #8a8a8a;
        border: none;
        font-weight: bold;
        font-size: 20px;
        border-radius: 10px;
      }
      #header-title {
        margin-left: 22%;
      }
      #header-title h1 {
        font-weight: bold;
        font-color: white;
      }
      .modal-dialog {
        position: absolute;
        top: 5%;
        left: 20%;
        transform: translateX(20%);
      }

      /* 모달창 시작 */
      .modal-content {
        height: 500px;
      }
      .modal-header {
        border: none !important;
        background-color: #d9d9d9;
        font-size: 40px;
        font-weight: bold;
      }
      .modal-body {
        display: flex;
        justify-content: space-between;
        border: none !important;
      }
      #x_img {
        width: 15px;
        height: 20px;
      }
      #btn-close-modal {
        border: none;
        background: none;
      }
      #product-img {
        background-color: #d9d9d9;
        width: 48%;
        display: flex;
        justify-content: center;
        align-items: center;
      }
      #product-detail-box {
        background-color: #d9d9d9;
        width: 48%;
        display: flex;
        align-items: center;
        justify-content: center;
      }
      #product-detail {
        background-color: white;
        width: 100%;
        height: 90%;
      }
      #product-detail-puts {
        height: 90%;
        display: flex;
        justify-content: center;
        align-items: center;
      }

      #product-detail-ok {
        display: flex;
        justify-content: right;
        margin-right: 28px;
      }
      #product-detail-table {
        border-collapse: separate;
        border-spacing: 10px 30px; /* 상하 간격을 10px로 설정 */
      }
      #product-detail-table tr td {
        font-size: 20px;
        font-weight: bold;
      }

      /*
        수정하기 모달창
         */
      #modify-x_img {
        width: 15px;
        height: 20px;
      }
      #btn-close-modify-modal {
        border: none;
        background: none;
      }
      #product-modify-img {
        background-color: #d9d9d9;
        width: 48%;
        display: flex;
        justify-content: center;
        align-items: center;
      }
      #product-detail-modify-box {
        background-color: #d9d9d9;
        width: 48%;
        display: flex;
        align-items: center;
        justify-content: center;
      }
      #product-detail-modify {
        background-color: white;
        width: 100%;
        height: 90%;
      }
      #product-detail-modify-puts {
        height: 90%;
        display: flex;
        justify-content: center;
        align-items: center;
      }
      #product-detail-modify-table tr td input {
        border: 2px solid #d9d9d9;
        border-radius: 5px;
      }

      #product-detail-modify-table {
        border-collapse: separate;
        border-spacing: 10px 30px; /* 상하 간격을 10px로 설정 */
      }
      #product-detail-modify-table tr td {
        font-size: 20px;
        font-weight: bold;
      }

      #product-detail-modify-table p {
        padding-left: 10px;
      }

      #product-detail-modify-table td{
            position: relative;
            padding: 5px;
        }

        #product-detail-modify-table td::after{
            content: '';
            position: absolute;
            top: 20%;
            left: 0;
            width: 2px;
            height: 60%;
            background-color: black;
        }

        #product-detail-modify-table td:first-child::after{
            content: none;
        }


    </style>
  </head>
  <body>
    <jsp:include page="../common/header.jsp" />
    <div class="waper">
      <div id="top-manu">
        <div id="top-reft">
          <div id="top-reft1">
            <img src="../resources/menu_icons/직원 아이콘.png" />
            <p class="main_name">재고</p>
          </div>
        </div>

        <div id="top-right1">
          <div id="right-check">
            <input type="checkbox" />
            <p>재고부족</p>
          </div>
          <div class="selectbox" id="category-select">
            <select>
              <option>카테고리</option>
              <option>스낵</option>
              <option>음료</option>
            </select>
          </div>
          <div id="search-box">
            <input
              class="search-input"
              type="text"
              placeholder="상품명 or 상품번호"
            />
            <input class="search-input-submit" type="submit" value="검색" />
          </div>
        </div>
      </div>
      <div id="main">
        <div id="main-in">
          <table class="table table-hover" id="table1">
            <thead>
              <tr>
                <th class="col-1">상품번호</th>
                <th class="col-1">카테고리</th>
                <th class="col-3">상품명</th>
                <th class="col-1">수량</th>
                <th class="col-1">상태</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1219045</td>
                <td>스낵</td>
                <td>달콤 프란찌(딸기)</td>
                <td>32</td>
                <td>재고부족</td>
              </tr>
              <tr>
                <td>1219045</td>
                <td>스낵</td>
                <td>달콤 프란찌(딸기)</td>
                <td>32</td>
                <td></td>
              </tr>
              <tr>
                <td>1219045</td>
                <td>스낵</td>
                <td>달콤 프란찌(딸기)</td>
                <td>32</td>
                <td></td>
              </tr>
              <tr>
                <td>1219045</td>
                <td>스낵</td>
                <td>달콤 프란찌(딸기)</td>
                <td>32</td>
                <td></td>
              </tr>
            </tbody>
          </table>
        </div>
        <div id="main-pageing">
          <img src="/resources/common/공통_페이징바화살표.png" />
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
          <img src="/resources/common/공통_페이징바화살표.png" />
        </div>
      </div>

      <!--start point-->
      <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
        crossorigin="anonymous"
      ></script>

      <!-- Modal -->
      <div
        class="modal fade"
        id="staticBackdrop-modify"
        data-bs-backdrop="static"
        data-bs-keyboard="false"
        tabindex="-1"
        aria-labelledby="staticBackdropLabel"
        aria-hidden="true"
      >
        <div class="modal-dialog modal-lg modal-dialog-centered">
          <div class="modal-content">
            <div class="modal-header">
              <p>상품 추가</p>
              <button
                type="button"
                class="btn-close"
                data-bs-dismiss="modal"
                aria-label="Close"
                id="btn-close-modify-modal"
              >
                <img src="/resources/common/공통_Icon.png" id="modify-x_img" />
              </button>
            </div>
            <div class="modal-body">
              <div id="product-modify-img">이미지사진</div>
              <div id="product-detail-modify-box">
                <div id="product-detail-modify">
                  <div id="product-detail-modify-puts">
                    <table id="product-detail-modify-table">
                      <tr>
                        <td>상품번호</td>
                        <td>
                          <p>p12334</p>
                        </td>
                      </tr>

                      <tr>
                        <td>카테고리</td>
                        <td>
                          <p>스낵</p>
                        </td>
                      </tr>
                      <tr>
                        <td>상품명</td>
                        <td>
                          <p>달콤 프란찌(딸기)</p>
                        </td>
                      </tr>
                      <tr>
                        <td>입고가</td>
                        <td>
                          <p>800</p>
                        </td>
                      </tr>
                      <tr>
                        <td>판매가</td>
                        <td>
                          <p>2000</p>
                        </td>
                      </tr>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <script>
        // 테이블의 모든 행에 클릭 이벤트 추가
        document.querySelectorAll('#table1 tbody tr').forEach((row) => {
          row.addEventListener('click', function () {
            // 모달을 띄우기 위한 코드
            var myModal = new bootstrap.Modal(
              document.getElementById('staticBackdrop-modify')
            );
            myModal.show(); // 모달 열기
          });
        });
      </script>
      <!--end point-->
    </div>
  </body>
</html>
