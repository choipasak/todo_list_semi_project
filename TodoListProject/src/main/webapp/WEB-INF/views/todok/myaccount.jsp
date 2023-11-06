<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="theme-color" content="#000000" />
    <title>Todok MyAccount</title>
    <link rel="stylesheet" href="./font/AmSeuTeReuDam.ttf" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Source+Sans+Pro%3A400"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Inter%3A400"
    />
    <link rel="stylesheet" href="./styles/myaccount.css" />
  </head>

  <body>
    <div class="myaccount-Grd">
      <div class="profilebox-xUZ">
        <div class="profile-FTf">
          <div class="auto-group-rhqm-mgu">
            <img class="profilcricle-tmX" src="./assets/profilcricle-cfT.png" />
            <div class="userid-maR">test1</div>
          </div>
          <div class="auto-group-cga5-FVb">
            <div class="auto-group-mokv-Pbo">
              <div class="k-WRX">27.3k</div>
              <div class="like-CJM">like</div>
            </div>
            <!-- <img class="divlnprofile-q6R" src="REPLACE_IMAGE:162:336" /> -->
            <div class="whiteline"></div>
            <div class="auto-group-ezzz-YmX">
              <div class="item-50-dny">50</div>
              <div class="my-list-hXw">my list</div>
            </div>
          </div>
        </div>
        <div class="mypagemenu-3ER">
          <button type="button" class="myaccount-Mku">My Account</button>
          <button type="button" class="mytodolist-rBs">My Todo List</button>
          <button type="button" class="logout-qs3">Logout</button>
        </div>
        <img class="todoksidelogo-LMw" src="./assets/todoksidelogo-CDw.png" />
      </div>
      <div class="auto-group-pd2h-Dgd">
        <div class="mypagetitle-MH3">My Account</div>
        <div class="auto-group-ynrd-PUd">
          <div class="auto-group-ktu7-K7P">
            <div class="auto-group-eq3f-q5j">
              <div class="infoname-L2V">
                <div class="infotitle-FfF">name</div>
                <input
                  type="text"
                  class="infovalue-jqK"
                  readonly
                  value="홍길동"
                />
              </div>
              <div class="infonickname-BxD">
                <div class="infotitle-Y25">nickname</div>
                <input
                  type="text"
                  class="infovalue-2xq"
                  value="쿼카"
                  placeholder="새로운 닉네임"
                />
              </div>
              <div class="infoemail-sTf">
                <div class="infobox-buT"></div>
                <div class="infotitle-tNm">email</div>
                <input
                  type="text"
                  class="infovalue-CPT"
                  readonly
                  value="test12345@gmail.com"
                />
              </div>
            </div>
            <div class="editpic-skV">
              <div class="infotitle-CXs">profile color</div>
              <div class="profilcricle-XKF"></div>
            </div>
          </div>
          <div class="auto-group-vc2d-nFB">
            <div class="infopassword-5zy">
              <div class="infotitle-R3F">password</div>
              <input
                type="password"
                class="infovalue-vkh"
                placeholder="새로운 비밀번호를 입력해주세요"
              />
              <input
                type="password"
                class="infochk-qsf"
                placeholder="입력한 비밀번호를 다시 입력해주세요"
              />
            </div>
            <div class="auto-group-3imf-usX">
              <button type="button" class="compledit-qWH">수정완료</button>
              <button type="button" class="canceledit-EoK">취소</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
