<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <title>Todok Login</title>
  <script src="https://t1.kakaocdn.net/kakao_js_sdk/${VERSION}/kakao.min.js"
    integrity="${INTEGRITY_VALUE}" crossorigin="anonymous"></script>
  <script>
    // SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해야 합니다.
    Kakao.init('362bb944a6994bb59dab70c914a7ade4');

    // SDK 초기화 여부를 판단합니다.
    console.log(Kakao.isInitialized());
    Kakao.Auth.authorize({
      redirectUri: '${pageContext.request.contextPath}/todok/test1',
      prompt: 'select_account',
    });
  </script>
</head>

<body>
  <img class="todoksidelogo-qmK" id="miniLogo" src="./assets/todoksidelogo-eNM.png" />
  <div class="login-o3w">
    <div class="loginheader-74d">
      <img class="todoktitle-x5F" src="./assets/todoktitle.png" />
    </div>
    <form action="" name="loginForm">
      <div class="loginbox-6BT">
        <div class="auto-group-xsar-2L1">
          <div class="inputbox-mYV">
            <input class="auto-group-jqam-tND" type="text" placeholder="id"></input>
            <input class="auto-group-yafk-2sj" type="password" placeholder="password"></input>
          </div>
          <button type="button" class="loginbtn-ghP">로그인</button>
        </div>
        <div class="joinbtn-KEZ">
          <!-- <div class="kakaojoinbtn-sG5">
            <a href="${pageContext.request.contextPath}/todo/main">
              <button type="button" class="kakaojointext-ofX">
              </button>
            </a>
          </div> -->
          <div class="naverjoinbtn-qcD">
            <%
    String clientId = "YOUR_CLIENT_ID";//애플리케이션 클라이언트 아이디값";
    String redirectURI = URLEncoder.encode("YOUR_CALLBACK_URL", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
 %>
  <a href="<%=apiURL%>"><img height="50" src="http://static.nid.naver.com/oauth/small_g_in.PNG"/></a>
            <button type="button" class="naverjointext-Ns3">
              네이버 아이디
              <br />
              회원가입
            </button>
          </div>
          <button type="button" class="joinbtn-3CV">회원가입</button>
        </div>
      </div>
    </form>
    <div class="joinfooter-fzZ">
      <div class="footerline"></div>
      <div class="joinfootertext-YYZ">문의하기 sakdjfa@naver.com 개발자: 김혜진 강태승 박찬규 이종선 정유진 최정현</div>
    </div>
  </div>

  


</body>