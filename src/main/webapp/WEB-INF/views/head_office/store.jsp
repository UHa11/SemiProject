
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
            지점 관리
        </div>
        <div id="form-top-btn">
            <button>승인목록</button>
        </div>
    </div>

    <div id="top-manu">
        <div id="top_serch">
            <form>
                <select>
                    <option>지점번호</option>
                    <option>지점명</option>
                    <option>지점장</option>
                </select>
                <input type="text" >
                <input type="submit" value="검색">
            </form>
        </div>
    </div>
    <div id ="table-manu">
        <table id="table1">
            <colgroup>
                <col style="width: 5%;">
                <col style="width: 20%;">
                <col style="width: 10%;">
                <col style="width: 10%;">
            </colgroup>
            <thead>
            <tr>
                <th>지점번호</th>
                <th>지점명</th>
                <th>지점장</th>
                <th>지점 창업일</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>001234</td>
                <td>강남역점</td>
                <td>아무개</td>
                <td>2025-03-21</td>
            </tr>
            <tr>
                <td>001235</td>
                <td>강원도 속초점</td>
                <td>김감자</td>
                <td>2022-03-22</td>
            </tr>
            <tr>
                <td>001236</td>
                <td>부산 해운대점</td>
                <td>이해물</td>
                <td>2023-02-01</td>
            </tr>
            <tr>
                <td>000986</td>
                <td>대전정역점</td>
                <td>김성심</td>
                <td>2021-05-27</td>
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
