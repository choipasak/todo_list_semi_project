<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js"></script>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1"
    />
    <meta
      name="theme-color"
      content="#000000"
    />
    <title>Board</title>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Source+Sans+Pro%3A400"
    />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Inter%3A400"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/styles/board.css"
    />
  </head>

  <body>
    <div class="board-xLZ">
      <div class="auto-group-skmt-U41">
        <img
          class="todoksidelogo-zHF"
          src="${pageContext.request.contextPath}/assets/todoksidelogo-jBw.png"
        />

        <div class="regboardinputbox-WWV">
          <div class="regboarduserprofile-1y3"></div>
          <div class="auto-group-d2mf-VdK">
            <div
              class="regboarduser-dDj"
              name="userId"
              id="userId"
              value="${login}"
              readonly
            >
              BoardUser1
            </div>
            <textarea
              class="auto-group-naob-iky"
              name="content"
              maxlength="40"
              id="content"
              placeholder="당신이 생각하는 색다른 할 일을 모두에게 추천해주세요~"
            ></textarea>
          </div>

          <button
            type="button"
            id="registBtn"
            style="margin-top: 88px; border: none; background: transparent"
          >
            <img
              class="regbtn-8ph"
              src="${pageContext.request.contextPath}/assets/regbtn.png"
            />
          </button>
        </div>
      </div>

      <div class="boardorderbtn-oA9">
        <button
          type="button"
          id="bestBtn"
          value="1"
          class="recomdorderbtn-WqF"
        >
          추천순
        </button>
        <button
          type="button"
          id="newBtn"
          value="2"
          class="latestorderbtn-LpH"
        >
          최신순
        </button>
      </div>

      <div id="contentDiv">
        비동기 방식으로 서버와 통신을 진행한 후 목록을 만들어서 붙일 예정.
        <!-- <div class="boardtodo-QZF">
          <div class="boardtodo1-W6V">
            <div class="boardlistprofile-RjF"></div>
            <div class="auto-group-8wsh-Kpd">
              <div class="boardlistuser-rZf">
                efgihilkfkelokwoqktkywidkwnjgl
              </div>
              <div class="boardlistdate-9Ym">2023/10/30 23:47</div>
              <div class="boardlistcontent-fn1">
                여기는 투두리스트 등록 목록입니다. <br />
                두번째 줄입니다. 확인 부탁드립니다.
              </div>
            </div>
            <div class="auto-group-mgfb-PCD">
              <button
                type="button"
                style="border: none; background: transparent"
              >
                <img
                  class="like-XZK"
                  src="${pageContext.request.contextPath}/assets/like-VSR.png"
                />
              </button>
              <p class="heartnum-sdB">2</p>
            </div>
          </div> -->

        <!-- asdf -->

        <!-- <div class="boardtodo2-Lmf">
            <div class="boardlistprofile-TbP"></div>
            <div class="auto-group-bx4y-kqP">
              <div class="boardlistuser-JM7">
                efgihilkfkelokwoqktkywidkwnjgl
              </div>
              <div class="boardlistdate-apR">2023/10/30 23:47</div>
              <div class="boardlistcontent-JkR">
                여기는 투두리스트 등록 목록입니다. <br />
                두번째 줄입니다. 확인 부탁드립니다.
              </div>
            </div>
            <div class="auto-group-htzd-d21">
              <button
                type="button"
                style="border: none; background: transparent"
              >
                <img
                  class="like-yLm"
                  src="${pageContext.request.contextPath}/assets/like-zqf.png"
                />
              </button>
              <p class="heartnum-iJM">2</p>
            </div>
          </div>
          <div class="boardtodo3-PQV">
            <div class="boardlistprofile-7rH"></div>
            <div class="auto-group-omqs-EAD">
              <div class="boardlistuser-y7o">
                efgihilkfkelokwoqktkywidkwnjgl
              </div>
              <div class="boardlistdate-sDB">2023/10/30 23:47</div>
              <div class="boardlistcontent-Bjf">
                여기는 투두리스트 등록 목록입니다. <br />
                두번째 줄입니다. 확인 부탁드립니다.
              </div>
            </div>
            <div class="auto-group-cwts-WG9">
              <button
                type="button"
                style="border: none; background: transparent"
              >
                <img
                  class="like-rau"
                  src="${pageContext.request.contextPath}/assets/like-3n1.png"
                />
              </button>
              <p class="heartnum-om3">2</p>
            </div>
          </div>
          <div class="boardtodo4-6EM">
            <div class="boardlistprofile-1MK"></div>
            <div class="auto-group-4nj3-iWd">
              <div class="boardlistuser-FWZ">
                efgihilkfkelokwoqktkywidkwnjgl
              </div>
              <div class="boardlistdate-ANd">2023/10/30 23:47</div>
              <div class="boardlistcontent-VA1">
                여기는 투두리스트 등록 목록입니다. <br />
                두번째 줄입니다. 확인 부탁드립니다.
              </div>
            </div>
            <div class="auto-group-ovem-oRb">
              <button
                type="button"
                style="border: none; background: transparent"
              >
                <img
                  class="like-xJV"
                  src="${pageContext.request.contextPath}/assets/like-n9f.png"
                />
              </button>
              <p class="heartnum-WL1">2</p>
            </div>
          </div>
        </div> -->

        <!-- asdf -->
      </div>
    </div>
  </body>

  <script>
    //글 목록 함수 호출
    let str = '';
    let page = 1;
    let isFinish = false;
    let reqStatus = false;
    let selectNum = '2'; //추천순(1),최신순(2)

    let

    //const $changeableBtn = document.getElementById('changeableBtn').src;
    //console.log($changeableBtn);

    window.onload = function () {
      // const userId = '${login}';
      console.log('자동 고고');
      const userId = 'abc1234'; //test 를 위해
      getList(1, true, 2, userId);

      return;
    };

    document.getElementById('registBtn').onclick = () => {
      check();
    };

    function check() {
      const content = document.getElementById('content').value;
      // const userId = '${login}';

      const userId = 'abc1234'; //test 를 위해

      alert(userId);
      alert(content);
      if (userId === '') {
        alert('로그인이 필요한 화면입니다');
        return;
      } else if (content === '') {
        alert('추천 할일을 입력해 주세요.');

        document.getElementById('content').focus();
        return;
      }

      const formData = new FormData();

      formData.append('content', document.getElementById('content').value); //글 내용 추가
      formData.append('userId', userId); //작성자 추가

      //FormData객체를 보낼 때는 따로 headers 설정을 진행하지 않습니다.
      fetch('${pageContext.request.contextPath}/todok/regist', {
        method: 'post',
        body: formData,
      })
        //응답 데이터는 text 로 전달합니다.(uploadSuccess)
        //file input 내용을 비워 주시고, 글 영역 비워 주시고,
        //class 이름이 fileDiv(미리보기)영업을 감춰 주세요 --> display 속성을 none 으로.
        .then((res) => res.text())
        .then((data) => {
          document.getElementById('content').value =
            '당신이 생각하는 색다른 할 일을 모두에게 추천해주세요~'; //file input 비우기

          getList(1, true, selectNum, userId);
        });
    } //보드 등록 끝

    const $contentDiv = document.getElementById('contentDiv');

    //목록 함수
    function getList(page, reset, selectNum, userId) {
      str = '';
      isFinish = false;

      fetch('${pageContext.request.contextPath}/todok/getList', {
        method: 'post',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          page: page,
          selectNum: selectNum,
          userId: userId,
        }),
      })
        .then((res) => res.json())
        .then((list) => {
          console.log(list.length);
          if (list.length <= 0) {
            isFinish = true;
            reqStatus = true;
            return;
          }

          if (reset) {
            while ($contentDiv.firstChild) {
              $contentDiv.firstChild.remove();
            }
            page = 1;
          }
          for (board of list) {
            console.log('board.regDate : ', board.boardRegdate);
            str +=
              `
            <div class="boardtodo-QZF">
            <div class="boardtodo1-W6V">
          <div class="boardlistprofile-RjF"></div>
          <div class="auto-group-8wsh-Kpd">
            <div class="boardlistuser-rZf">` +
              board.userId +
              `</div>
            <div class="boardlistdate-9Ym">` +
              board.boardRegdate +
              `</div>
            <div class="boardlistcontent-fn1">` +
              board.content +
              `
            </div>
          </div>
          <div class="auto-group-mgfb-PCD">
            <button
              type="button"
              style="border: none; background: transparent"
            >
              <img
                class="like-XZK"
                id="changeableBtn"
                src="${pageContext.request.contextPath}/assets/like-VSR.png"
              />
            </button>
            <p class="heartnum-sdB">` +
              board.likeCount +
              `</p>
          </div>
        </div>
        </div>`;
          }

          if (!reset) {
            $contentDiv.insertAdjacentHTML('beforeend', str);
          } else {
            $contentDiv.insertAdjacentHTML('afterbegin', str);
          }

          isFinish = true;
        }); //end fetch
    } //글 목록 함수 호출 끝
  </script>
</html>
