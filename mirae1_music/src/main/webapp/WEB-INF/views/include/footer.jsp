<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
    /* CUSTOM STYLE by ATO 230109 */
    .app-footer {
        background: black;
        color: #9f9f9f;
        padding:3.5rem 0;
        margin-top: 0.8rem;
    }
    footer .app-container {
        display: flex;
        max-width: 1020px;
        margin: 0 auto;
        padding: 0 1.5rem;
        box-sizing: border-box;
    }
    .app-footer-logo {
        width: 50%;
    }
    .app-footer-links {
        display: flex;
        width: 50%;
    }
    .app-footer a {
    text-decoration: none;
    color: #adadad;
    }
    .app-footer-links {
        justify-content: flex-end;
    }
    .app-footer-links div {
        margin-left: 5rem;
    }
    .app-footer-links h6 {
        margin-top: 0;
        font-size: 14px;
        font-weight: 900;
        color: #FFF;
        margin-bottom: 0;
    }
    .app-footer-links ul {
        padding: 0;
        margin: 0;
        font-size: 13px;
        list-style: none;
        line-height: 1em;
    }
    .app-footer-links ul li {
        padding-top: 12px;
    }
    .app-footer-links ul li:hover{
        font-weight: bold;
    }
    .footer_company {
        font-size: 0.9rem;
        line-height: 1.3rem;
        margin-top: 0.7rem;
        margin-left: -2px;
    }
        
    .footer_note {
        font-size: 0.7em;
        border: 1px solid #9f9f9f;
        width: 16%;
        padding: 3px 5px;
        margin-top: 0.8rem;
        text-align: center;
        color: #d1d1d1;
        margin-left: 1px;
    }
    .footer_note:hover {
	font-weight: bold; 
	}
    
    @media (max-width: 768px) {
        .app-container {
            flex-direction: column;
            padding: 0 2rem;
        }
        .app-footer-logo,
        .app-footer-links,
        .app-footer-links div {
            width: 100%;
            flex-grow: 0;
            flex-basis: 100%;
        }
        .app-footer-links {
            flex-direction: column;
            flex-wrap: nowrap;
        }
        .app-footer-links div {
            margin: 0;
        }
        .app-footer-links h6 {
            font-size: 0.9em;
            margin-top:1.5em;
        }
        .app-footer-links ul li {
            padding-top: 0.5em;
        }
        .app-footer-links li {
            display: inline-block;
            margin-right: 1rem;
            font-size: 0.9em;
        }
        .app-footer-links ul {
            margin-top: 0;
        }
        
        .footer_company {
            font-size: 0.7rem;
            line-height: 1rem;
            margin-top: 0.3rem;
            margin-left: -1px;
        }
        
        .footer_note {
            margin-top:0.4rem;
            font-size:0.7rem;
            width: 20%;
            padding: 3px 3px;
        }
    }
</style>
<title>Insert title here</title>
</head>
<body>
<footer class="app-footer">
    <div class="app-container">
        <!-- DISABLE LAYOUT DEFAULT FOOTER by ATO 230109 
                    <div class="app-footer-copyright">
            Designed by CALVINSNAX.        </div> -->
        <div class="app-footer-logo">
            <!-- 푸터 로고 -->
            <a href="#">
                <img src="./resources/images/logo_dark.png" width=50% height=50%>
            </a>
            <!-- 회사 정보, 릴리즈 노트 -->
            <div class="footer_company">
                미래 IT | 팀장: 구상우 | 팀원: 박승범 윤민수 | 010-0000-0000<br>
                PLAYNN MUSIC  |  개발일: 0000-00-00
            </div>
            <a href="#">
                <div class="footer_note">
                    릴리즈 노트
                </div>
            </a>
        </div>
        <div class="app-footer-links">
            <div class="app-footer-links-community">
                <h6>커뮤니티</h6>
                <ul>
                    <li><a href="#">K-POP</a></li>
                    <li><a href="#">J-POP</a></li>
                    <li><a href="#">POP</a></li>
                </ul>
            </div>
            <div class="app-footer-links-playnnmedia">
                <h6>플레인미디어</h6>
                <ul>
                <li><a href="#">뉴스</a></li>
                <li><a href="#">뮤직 비디오</a></li>    
            </ul>
            </div>
        </div>
    </div>
</footer>
</body>
</html>