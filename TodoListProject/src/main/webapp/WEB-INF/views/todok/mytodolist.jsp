<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="theme-color" content="#000000" />
<title>Todok MyTodoList</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro%3A400" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Inter%3A400" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/styles/mytodolist.css" />
</head>

<body>
	<div class="mytodolist-psK">
		<div class="profilebox-nxZ">
			<div class="profile-qpM">
				<div class="auto-group-zsth-kAd">
					<div class="profilcricle-3fX"></div>
					<div class="userid-9yT">test1</div>
				</div>
				<div class="auto-group-xfzk-QuP">
					<div class="auto-group-azg1-MJq">
						<div class="k-eYq">27.3k</div>
						<div class="like-3Db">like</div>
					</div>
					<!-- <img class="divlnprofile-how" src="REPLACE_IMAGE:24:236"/> -->
					<div class="whiteline"></div>
					<div class="auto-group-n98u-RV3">
						<div class="item-50-YJm">50</div>
						<div class="my-list-Cu7">my list</div>
					</div>
				</div>
			</div>
			<div class="mypagemenu-Vmj">
				<button type="button" class="myaccount-Dhj">My Account</button>
				<button type="button" class="mytodolist-8ph">My Todo List</button>
				<button type="button" class="logout-qg4">Logout</button>
			</div>
			<img class="todoksidelogo-eo3"
				src="${pageContext.request.contextPath}/assets/todoksidelogo-GUh.png" />
		</div>
		<div class="auto-group-cugd-jpV">
			<div class="mypagetitle-fi9">My Todo List</div>
			<div id="boardArea" class="mytodolist-SsK" style="border: 1px solid black;">

      <!-- 여기서부터 비동기 무한스크롤링 부분임. -->

				<!-- <div class="auto-group-h7tv-ngH">
					<div class="recomd-8k9">
						<button type="button" class="del-Hd3">
							<img class="delbtn-CED"
								src="${pageContext.request.contextPath}/assets/delbtn.png" />
						</button>
						<div class="auto-group-1rar-sLM">
							<div class="auto-group-5meh-6U1">
								<div class="regdate-EaD">2023.10.25</div>
								<div class="this-is-one-line-content-9hB">this is one line
									content</div>
							</div>
							<div class="auto-group-vwhf-UUZ">
								<img class="like-dMT"
									src="${pageContext.request.contextPath}/assets/like-o21.png" />
								<div class="k-yAR">21.2k</div>
							</div>
						</div>
					</div>
					<div class="recomd-1cu">
						<button type="button" class="del-NCZ">
							<img class="delbtn-6uF"
								src="${pageContext.request.contextPath}/assets/delbtn.png" />
						</button>
						<div class="auto-group-vbym-mEh">
							<div class="auto-group-2xxd-HD3">
								<div class="regdate-DcV">2023.10.25</div>
								<div class="this-is-one-line-content-v17">this is one line
									content</div>
							</div>
							<div class="auto-group-8umf-q85">
								<img class="like-BSq"
									src="${pageContext.request.contextPath}/assets/like-q6y.png" />
								<div class="k-ixZ">21.2k</div>
							</div>
						</div>
					</div>
				</div> -->


			</div>
		</div>
	</div>
	</div>

	<script>

  // const loginUserId = ${sessionScope.login};

  let str = '';
  let page = 1;
  let isFinish = false; // 초기 값도 false
  let reqStatus = false;

  const $boardArea = document.getElementById('boardArea');

  window.onload = function() {

    console.log('일단 1번째 로그');
    const userId= 'id12';

    getList(1, true, userId);
    
  }
  
  // getLikeList(1, true);
  
  function getLikeList(reset){
    
    const userId= 'id12';


    fetch('${pageContext.request.contextPath}/todok/mytodolist/getboard', {
      method: 'post',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        userId: id,
        bno: bno,
      }),
    })
    .then(res => res.json())
    .then(list => {
      console.log(list);
      getList(page, reset, list);
    });

  } // getLikeList의 끝

  const formData = new FormData();

  const userId= 'id12';
  // formData.append('content', document.getElementById('content').value); //글 내용 추가
  formData.append('userId', userId); //작성자 추가


  function getList(page, reset, userId){
    
    // const userId= 'id12';


    content = '';
    isFinish = false; // ?
    // console.log('page: ', page);
    console.log('reset: ', reset);

    fetch('${pageContext.request.contextPath}/todok/mytodolist/getboard', {
      method: 'post',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        'userId': userId,
      })
      })
    .then(res => res.json())
    .then((list => {
      console.log('받아 온 list => ', list);
      
      for(board of list){
        str +=
        `<div class="auto-group-h7tv-ngH">
					<div class="recomd-8k9">
						<button type="button" class="del-Hd3">
							<img class="delbtn-CED"
								src="${pageContext.request.contextPath}/assets/delbtn.png" />
						</button>
						<div class="auto-group-1rar-sLM">
							<div class="auto-group-5meh-6U1">
								<div class="regdate-EaD">날짜</div>
								<div class="this-is-one-line-content-9hB">`+ board.content +`</div>
							</div>
							<div class="auto-group-vwhf-UUZ">
								<img class="like-dMT"
									src="${pageContext.request.contextPath}/assets/like-o21.png" />
								<div class="k-yAR">여기 라이크</div>
							</div>
						</div>
					</div>
					<div class="recomd-1cu">
						<button type="button" class="del-NCZ">
							<img class="delbtn-6uF"
								src="${pageContext.request.contextPath}/assets/delbtn.png" />
						</button>
						<div class="auto-group-vbym-mEh">
							<div class="auto-group-2xxd-HD3">
								<div class="regdate-DcV">날짜</div>
								<div class="this-is-one-line-content-v17">`+ board.content +`</div>
							</div>
							<div class="auto-group-8umf-q85">
								<img class="like-BSq"
									src="${pageContext.request.contextPath}/assets/like-q6y.png" />
								<div class="k-ixZ">라이크</div>
							</div>
						</div>
					</div>
				</div>`

      };
      

      if (!reset) {
            $contentDiv.insertAdjacentHTML('beforeend', str);
          } else {
            $contentDiv.insertAdjacentHTML('afterbegin', str);
          }

          isFinish = true;
      


    }));
  }; // getList의 끝







  
    
  // function getList(page, reset, likeList) { //매개변수인 likeList는 
  //             str = '';
  //             isFinish = false; // 처음 설정도 false
  //             console.log('page: ', page);
  //             console.log('reset: ', reset); //확인용 출력

  //             fetch('${pageContext.request.contextPath}/snsboard/' + page)
  //                 .then(res => res.json())
  //                 .then(list => {
  //                     console.log(list);
  //                     console.log(list.length);
  //                     if (list.length <= 0) {
  //                         isFinish = true;
  //                         reqStatus = true;
  //                         return;
  //                     }

  //                     if (reset) {
  //                         while ($contentDiv.firstChild) {
  //                             $contentDiv.firstChild.remove();
  //                         }
  //                         page = 1;
  //                     }

  //                     for (board of list) {
  //                         str +=
  //                         `<div class="auto-group-h7tv-ngH">
  //                           <div class="recomd-8k9">
  //                             <button type="button" class="del-Hd3">
  //                               <img class="delbtn-CED"
  //                                 src="${pageContext.request.contextPath}/assets/delbtn.png" />
  //                             </button>
  //                             <div class="auto-group-1rar-sLM">
  //                               <div class="auto-group-5meh-6U1">
  //                                 <div class="regdate-EaD">2023.10.25</div>
  //                                 <div class="this-is-one-line-content-9hB">
  //                                  ` + board.content + `
  //                                   </div>
  //                               </div>
  //                               <div class="auto-group-vwhf-UUZ">
  //                                 <img class="like-dMT"
  //                                   src="${pageContext.request.contextPath}/assets/like-o21.png" />
  //                                 <div class="k-yAR"> ` +  + ` </div>
  //                               </div>
  //                             </div>
  //                           </div>
  //                           <div class="recomd-1cu">
  //                             <button type="button" class="del-NCZ">
  //                               <img class="delbtn-6uF"
  //                                 src="${pageContext.request.contextPath}/assets/delbtn.png" />
  //                             </button>
  //                             <div class="auto-group-vbym-mEh">
  //                               <div class="auto-group-2xxd-HD3">
  //                                 <div class="regdate-DcV">2023.10.25</div>
  //                                 <div class="this-is-one-line-content-v17">
  //                                   ` + board.content + `
  //                                   </div>
  //                               </div>
  //                               <div class="auto-group-8umf-q85">
  //                                 <img class="like-BSq"
  //                                   src="${pageContext.request.contextPath}/assets/like-q6y.png" />
  //                                 <div class="k-ixZ">21.2k</div>
  //                               </div>
  //                             </div>
  //                           </div>
  //                         </div>`

  //                             `<div class="title-inner">
  //                             <!--제목영역-->
  //                             <div class="profile">
  //                                 <img src="${pageContext.request.contextPath}/img/profile.png">
  //                             </div>
  //                             <div class="title">
  //                                 <p>` + board.writer + `</p>
  //                                 <small>` + board.regDate + `</small> &nbsp;&nbsp;
  //                                 <a id="download" href="${pageContext.request.contextPath}/snsboard/download/` + board
  //                             .fileLoca + `/` + board.fileName + `">이미지 다운로드</a>
  //                             </div>
  //                         </div>
  //                         <div class="content-inner">
  //                             <!--내용영역-->
  //                             <p>` + board.content + `</p>
  //                         </div>
  //                         <div class="image-inner">
  //                             <!-- 이미지영역 -->
  //                             <a href="` + board.bno + `">
  //                                 <img data-bno="` + board.bno +
  //                             `" src="${pageContext.request.contextPath}/snsboard/display/` + board.fileLoca + `/` +
  //                             board.fileName + `">
  //                             </a>
  //                         </div>
  //                         <div class="like-inner">
  //                             <!--좋아요-->
  //                             <img src="${pageContext.request.contextPath}/img/icon.jpg"> <span>` + board.likeCnt + `</span>
  //                         </div>
  //                         <div class="link-inner">`;
  //                         //왜 조건문 -> likeList를 받았음. -> 검사
  //                         if (likeList) { //로그인 안한 사람도 목록은 봐야함. 로그인 안한사람에겐(list값이 안와서 false) 빈 하트, 로그인 한 사람에겐 채운하트 줄라고 
  //                             //로그인을 한 사람
  //                             if (likeList.includes(board.bno)) { //넘어온 list의 값에 list의 글 번호가 포함되어 있냐?
  //                                 //그렇다면 색칠 된 하트를 보여준다
  //                                 str = `<a id="likeBtn" href="` + board.bno +
  //                                     `"><img src="${pageContext.request.contextPath}/img/like2.png" width="20px" height="20px">좋아요</a>`;
  //                             } else {
  //                                 //글 번호가 포함X -> 빈 하트
  //                                 str += `<a id="likeBtn" href="` + board.bno +
  //                                     `"><img src="${pageContext.request.contextPath}/img/like1.png" width="20px" height="20px">좋아요</a>`;
  //                             }

  //                         } else {
  //                             //로그인 안한 사람 -> 빈 하트
  //                             str += `<a id="likeBtn" href="` + board.bno +
  //                                 `"><img src="${pageContext.request.contextPath}/img/like1.png" width="20px" height="20px">좋아요</a>`;
  //                         }
  //                         str += `
  //                             <a id="delBtn" href="` + board.bno + `"><i class="glyphicon glyphicon-remove"></i>삭제하기</a>
  //                         </div>`;
  //                     }
  //                     if (!reset) {
  //                         $contentDiv.insertAdjacentHTML('beforeend', str);
  //                     } else {
  //                         $contentDiv.insertAdjacentHTML('afterbegin', str);
  //                     }

  //                     isFinish = true; // 브라우저가 로딩이 되었는지를 확인.

  //                 }); //end fetch
  //         } // end getList() 
                    
  sessionStorage.getItem('userId')

  </script>

</body>