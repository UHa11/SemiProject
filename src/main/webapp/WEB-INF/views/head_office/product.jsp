
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        #form{
            width: 100%;
            padding: 30px;
        }
        #form-top{
            display: flex;
            justify-content: space-between;
            align-items: end;
        }
        #form_name{
            font-size: 40px;
            font-weight: bold;
            padding: 10px;
        }
        #form-top-btn{
            padding-bottom: 10px;
        }
        #top-manu{
            border-top: 3px solid black;
            height: 8%;
            background-color: #D9D9D9;
            display: flex;
            justify-content: right;
            align-items: center;
        }

        #top_serch{
            display: flex;
            justify-content: right;
            padding-right: 61px;
            width: 35%;
        }

        #table-manu{
            height: 75%;
            width: 100%;
            border-top: 3px solid black;
        }
        #table1{
            width: 100%;
            text-align: center;
            table-layout: auto;
        }
        #table1 thead{
            height: 30px;
            background-color: #D9D9D9;
            border-bottom: 3px solid #939393;
        }
        #table1 tbody tr{
            border-bottom: 3px solid #939393;
            height: 50px;
        }
        #footer{
            border-top: 3px solid #939393;
            background-color: #D9D9D9;
            height: 8%;
            border-bottom: 3px solid black;
            display: flex;
            justify-content: center;
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
<jsp:include page="../common/header2.jsp"/>
<div id="form">
    <div id="form-top">
        <div id="form_name">
            상품 관리
        </div>
        <div id="form-top-btn">
            <button>상품추가</button>
        </div>
    </div>

    <div id="top-manu">
        <div id="top_serch">
            <form>
                <select>
                    <option>상품번호</option>
                    <option>카테고리</option>
                    <option>상품명</option>
                </select>
                <input type="text" >
                <input type="submit" value="검색">
            </form>
        </div>
    </div>
    <div id ="table-manu">
        <table id="table1">
            <colgroup>
                <col style="width: 15%;">
                <col style="width: 5%;">
                <col style="width: 50%;">
                <col style="width: 10%;">
                <col style="width: 10%;">
            </colgroup>
            <thead>
                <tr>
                    <th>상품 번호</th>
                    <th>카테고리</th>
                    <th>상품명</th>
                    <th>입고가</th>
                    <th>판매가</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>18982</td>
                    <td>스낵</td>
                    <td>생생칩</td>
                    <td>1500</td>
                    <td>3000</td>
                </tr>
                <tr>
                    <td>1800</td>
                    <td>스낵</td>
                    <td>태양칩</td>
                    <td>900</td>
                    <td>1800</td>
                </tr>
                <tr>
                    <td>17083</td>
                    <td>김밥</td>
                    <td>치킨삼각김밥</td>
                    <td>500</td>
                    <td>1500</td>
                </tr>
                <tr>
                    <td>18983</td>
                    <td>스낵</td>
                    <td>사르르초코칩</td>
                    <td>1200</td>
                    <td>2700</td>
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
</div>
</body>
</html>
