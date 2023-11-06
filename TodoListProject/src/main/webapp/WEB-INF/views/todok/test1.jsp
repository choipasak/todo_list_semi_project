<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0"
    />
    <title>Document</title>
  </head>
  <body>
    <form
      action="./todok/test1"
      method="get"
    >
      userId:
      <input
        type="text"
        name="userId"
      />
      <br />
      userPw:
      <input
        type="text"
        name="userPw"
      />
      <br />
      name:
      <input
        type="text"
        name="name"
      />
      <br />
      nickName:
      <input
        type="text"
        name="nickName"
      />
      <br />
      email1:
      <input
        type="text"
        name="email1"
        placeholder="이메일 아이디 값"
      />
      @
      <input
        type="text"
        name="email2"
        placeholder="이메일 주소 값"
      />
      <br />
      <input
        type="submit"
        value="get"
      />
    </form>
  </body>
</html>

<!-- 

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
    <h1>test</h1>
    <br />
    <form
      action=""
      method="post"
    >
      <br />W
      <input
        type="text"
        placeholder="id"
      />
      <br />
      <input
        type="text"
        placeholder="pw"
      />
      <br />
      <input
        type="text"
        placeholder="name"
      />
      <br />
      <input
        type="text"
        placeholder="nickName"
      />
      <br />
      <input
        type="text"
        placeholder="email1"
      />@
      <input
        type="text"
        placeholder="email2"
      />
      <br />
      <button type="submit">send</button>
    </form>
  </body>
</html>
 -->