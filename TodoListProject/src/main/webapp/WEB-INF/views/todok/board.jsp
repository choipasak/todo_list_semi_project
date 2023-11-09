<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<!DOCTYPE html>
<>
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
          id="homeBtn"
          src="${pageContext.request.contextPath}/assets/todoksidelogo-jBw.png"
        />

        <div class="regboardinputbox-WWV">
          <div class="regboarduserprofile-1y3"></div>
          <div class="auto-group-d2mf-VdK">
            <div
              class="regboarduser-dDj"
              name="userId"
              id="userId"
              readonly
            ></div>
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
          id="newBtn"
          value="1"
          class="recomdorderbtn-WqF"
        >
          등록순
        </button>
        <button
          type="button"
          id="bestBtn"
          value="2"
          class="latestorderbtn-LpH"
        >
          인기순
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
    
    <script>
      //글 목록 함수 호출
      let str = '';
      let page = 1;
      let isFinish = false;
      let reqStatus = false;
      let selectNum; // 등록순(1), 인기순(2)
  
      let likeImg = null;
  
      const userId = 'id8';
  
      const $userId = document.getElementById('userId');
  
      document.getElementById('homeBtn').onclick = () => {
        location.href = '${pageContext.request.contextPath}/todok/main';
      };
  
      // var reLoadContent = document
      //   .getElementById('content')
      //   .getAttribute('placeholder');
      // console.log('요소 가져왓음: ', reLoadContent);
      // const reLoadContent = document.getElementById('content');
      // placeholder = '당신이 생각하는 색다른 할 일을 모두에게 추천해주세요~';
  
      // const userId = 'abc1234'; //test 를 위해
  
      window.onload = function () {
        document.getElementById('homeBtn').onclick = () => {
          location.href = '${pageContext.request.contextPath}/todok/main';
        };
        // const userId = '${login}';
        console.log('자동 고고');
        const userId = 'id8'; //test 를 위해
        selectNum = 1;
        getNickName(userId);
        console.log('window에서 userId: ', userId);
        getList(1, true, selectNum, userId);
  
        return;
      };
  
      // 닉네임 가져오는 함수
      function getNickName(userId) {
        console.log('함수에서 userId: ', userId);
        fetch('${pageContext.request.contextPath}/board/getNickName/' + userId, {
          method: 'post',
          headers: {
            'Content-Type': 'text/plain',
          },
        })
          .then((res) => res.text())
          .then((data) => {
            console.log('서버에서 넘어온 닉값: ', data);
            $userId.insertAdjacentHTML('afterbegin', data);
          });
      }
      document.getElementById('registBtn').onclick = () => {
        check();
      };
  
      //조회순 버튼 클릭
      document.getElementById('newBtn').onclick = () => {
        selectNum = 1;
        getList(1, true, selectNum, userId);
      };
      document.getElementById('bestBtn').onclick = () => {
        const userId = 'id8'; //test 를 위해
        selectNum = 2;
        getList(1, true, selectNum, userId);
      };
  
      function check() {
        const content = document.getElementById('content').value;
        // const userId = '${login}';
  
        const userId = 'id8'; //test 를 위해
  
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
        fetch('${pageContext.request.contextPath}/board/regist', {
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
            // textarea의 내용을 가져오는 부분 수정
  
            document.getElementById('content').onclick = () => {
              document.getElementById('content').value = '';
            };
  
            // const contentTextarea = document.getElementById('content');
            // const content = contentTextarea.value.trim(); // trim()을 사용하여 앞뒤 공백을 제거하고 내용을 가져옴
            // console.log('content값이 뭐가 올까', content);
            // content = '';
  
            // content.focus();
            // 이후 content 변수를 사용하여 내용을 확인하고 처리
            selectNum = 1;
            getList(1, true, selectNum, userId);
          });
      } //보드 등록 끝
  
      const $contentDiv = document.getElementById('contentDiv');
  
      //목록 함수
      function getList(page, reset, selectNum, userId) {
        str = '';
        isFinish = false;
  
        fetch('${pageContext.request.contextPath}/board/getList', {
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
              let parseTimeCall = parseTime(board.boardRegdate);
  
              console.log('board.regDate : ', board.boardRegdate);
  
              console.log('', board.likeFlag);
  
              if (board.likeFlag === 1) {
                console.log('확인용 플래그값: ', board.likeFlag);
                likeImg = 'like-VSR.png';
              } else {
                likeImg = 'like-empty.png';
              }
              // let clickLikeBtn = document.getElementById('clickLikeBtn').value;
              // console.log('대체 clickLikeBtn -> ', clickLikeBtn);
              // clickLikeBtn.onclick = () => {
              //   if (board.likeFlag === 1) {
              //     likeImg = 'like-empty.png';
              //   } else {
              //     likeImg = 'like-VSR.png';
              //   }
              // };
  
              // if ((likeImg = 'like-empty.png')) {
              //   document.getElementById('clickLikeBtn').onclick({
              //     likeImg: 'like-VSR.png',
              //   });
              // } else {
              //   document.getElementById('clickLikeBtn').onclick({
              //     likeImg: 'like-empty.png',
              //   });
              // }
  
              //좋아요 기능을 구현
              // $contentDiv.addEventListener('click', (e) => {
              //   e.preventDefault();
              //   if (!e.target.matches('#clickLikeBtn')) return;
              //   console.log('좋아요 버튼이 클릭됨!');
              // });
  
              str +=
                `
              <div class="boardtodo-QZF">
              <div class="boardtodo1-W6V">
                <div class="boardlistprofile-RjF" style="background-color: #` +
                board.profileColor +
                `"></div>
            <div class="auto-group-8wsh-Kpd">
              <div class="boardlistuser-rZf">` +
                board.userId +
                `</div>
                <div class="boardlistdate-9Ym">` +
                parseTimeCall +
                `</div>
              <div class="boardlistcontent-fn1">` +
                board.content +
                `
              </div>
            </div>
            <div id="btnContent" class="auto-group-mgfb-PCD">
                <a
                href="#"
                style="border: none; background: transparent"
              >
              <img
                  class="like-XZK"
                  src="${pageContext.request.contextPath}/assets/`+ likeImg +`"
                />
              </a>
              <p class="heartnum-sdB">` +
                board.likeCount +
                `</p>
            </div>
          </div>
          </div>`;
          
          const $btnContent = document.getElementById('btnContent');
          //좋아요 버튼 기능 구현 시작
          $btnContent.addEventListener('click', (e) => {
            // 일단 button -> a 기능 막기
            e.preventDefault();

            if (data === 1) {
              //좋아요 클릭 성공
              
              e.target.style.color = 'red';

              //span태그 값 가져오기 -> 522
              const $cnt =
                e.target.parentNode.previousElementSibling.children[1];
              $cnt.textContent = Number($cnt.textContent) + 1;
              //JS 형변환 -> 인트화 시켜주는 함수 Number()
            } else {
              
              e.target.style.color = 'gray';
              const $cnt =
                e.target.parentNode.previousElementSibling.children[1];
              $cnt.textContent = Number($cnt.textContent) - 1;
            }
          })
          





            }
  
            if (!reset) {
              $contentDiv.insertAdjacentHTML('beforeend', str);
            } else {
              $contentDiv.insertAdjacentHTML('afterbegin', str);
            }
  
            isFinish = true;
          }); //end fetch
  
        const handleScroll = _.throttle(() => {
          /*
                  쓰로틀링 - 일정한 간격으로 함수를 실행.
                  쓰로틀링은 사용자가 이벤트를 몇번이나 발생시키든, 일정한 간격으로
                  한 번만 실행하도록 하는 기법.
                  마우스 움직임, 스크롤 이벤트 같은 짧은 주기로 자주 발생하는 경우에 사용하는 기법 (lodash 라이브러리를 이용해 구현)
                  -> 쓰로틀이 랜더링을 1초에 한번씩만 되도록 강제해줌 -> 랜더링 문제가 사라짐.
                  - 이 기능을 브라우저엔 없어서 쓰로틀을 호출해서 사용해야 한다!
              */
  
          //console.log('throttle activate!');
          const scrollPosition = window.pageYOffset;
          const height = document.body.offsetHeight;
          const windowHeight = window.innerHeight;
  
          if (isFinish) {
            if (scrollPosition + windowHeight >= height * 0.9) {
              //스크롤이 전체 바의 길이의 90% 이상 내려왔냐?
              console.log('next page call!');
              getList(++page, false); //getList -> getLikeList로 변경
            }
          }
        }, 1000);
  
        //무한 스크롤 페이징
        //브라우저 창에서 스크롤이 발생할 때마다 이벤트 발생!
        window.addEventListener('scroll', () => {
          if (!reqStatus) handleScroll();
        });
      } //글 목록 함수 호출 끝
  
      //댓글 날짜 변환 함수
      function parseTime(regDate) {
        let time =
          regDate[0] +
          ' 년 ' +
          regDate[1] +
          ' 월 ' +
          regDate[2] +
          ' 일 ' +
          regDate[3] +
          ' 분 ';
        console.log(time);
        return time;
      }
    </script>
  </body>
</html>