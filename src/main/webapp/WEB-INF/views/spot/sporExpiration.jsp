<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/resources/css/btn.css">
    <style>


        .waper{
            width:100%;
            padding: 50px;
        }
        .main_name{
            font-weight: bolder;
            font-size: 50px;
            margin: 0;
        }
        #top-manu{
            display: flex;
            justify-content: space-between;
        }
        #top-left{
            background-color: #D9D9D9;
            width: 60%;
        }
        #top-left1{
            background-color: white;
            display: flex;
            align-content: center;
            align-items: center;
            width: 100%;
            border-bottom-right-radius: 20px;
            padding-bottom: 10px;
            padding-left: 10px;
        }

        #top-right1{
            background-color: #D9D9D9;
            width: 40%;
            display: flex;
            justify-content: center;
            align-items: center;
            border-top-left-radius: 20px;
            border-top-right-radius: 20px;
            gap: 10px;
        }
        #top-left p {
            padding-left: 15px;
        }
        #main{
            background-color: #D9D9D9;
            width: 100%;
            height: 90%;
            border-top-left-radius: 20px;
            border-bottom-left-radius: 20px;
            border-bottom-right-radius: 20px;
            padding: 50px 50px 100px;
        }
        #main-in{
            background-color: white;
            width: 100%;
            height: 100%;
            border-radius: 20px;
            padding: 50px;
        }

        #main-pageing{
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

        #main-pageing img{
            width: 70px;
            padding: 10px;
        }
        #main-pageing img:nth-of-type(2) {
            transform: rotate(180deg);
        }

        #main-pageing button{
            border: #B4B4B4 solid 3px;
            background: white;
            color: #B4B4B4;
            font-weight: bold;
            margin: 5px;
        }
        #main-pageing button:hover{
            border: #3C3C3C solid 3px;
            color: #3C3C3C;
            font-weight: bold;
        }

    </style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<div class="waper">
    <div id="top-manu">
        <div id="top-left">
            <div id="top-left1">
                <img src="../resources/menu_icons/유통기한관리 아이콘.png">
                <p class="main_name">유통기한 관리</p>
            </div>
        </div>

        <div id="top-right1">
            <select>
                <option>상품번호</option>
                <option>카테고리</option>
                <option>상품명</option>
            </select>
            <input class="search-input" type="text" placeholder="상품명 or 상품번호"/>
            <input class="search-input-submit" type="submit" value="검색" />
        </div>

    </div>
    <div id="main">
        <div id="main-in">
            <table class="table table-hover" id="table1">
                <colgroup>
                    <col style="width: 10%;">
                    <col style="width: 10%;">
                    <col style="width: 20%;">
                    <col style="width: 10%;">
                    <col style="width: 10%;">
                    <col style="width: 10%;">
                    <col style="width: 10%;">
                </colgroup>
                <thead>
                <tr>
                    <th>상품번호</th>
                    <th>카테고리</th>
                    <th>상품명</th>
                    <th>유통기한</th>
                    <th>수량</th>
                    <th>금액</th>
                    <th>폐기/임박</th>
                </tr>
                </thead>

                <tbody >
                    <tr>
                        <td>123</td>
                        <td>스낵</td>
                        <td>초코송이</td>
                        <td>2025-03-20</td>
                        <td>10</td>
                        <td>64,000</td>
                        <td><button>폐기하기</button></td>
                    </tr>
                    <tr>
                        <td>123</td>
                        <td>스낵</td>
                        <td>초코송이</td>
                        <td>2025-03-20</td>
                        <td>10</td>
                        <td>64,000</td>
                        <td><button>폐기하기</button></td>
                    </tr>
                    <tr>
                        <td>123</td>
                        <td>스낵</td>
                        <td>초코송이</td>
                        <td>2025-03-20</td>
                        <td>10</td>
                        <td>64,000</td>
                        <td>임박 D-1</td>
                    </tr>
                </tbody>
            </table>
        </div>
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
</div>
</body>
</html>
