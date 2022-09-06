<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



  <div class="container">

	<section id="main" class="mx-auto my-5 py-5 px-3">
		<h1>십이간지로 알아보는 연애유형</h1>
		<div class="col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
			<img src="/resources/img/main.png" alt="mainImage" class="img-fluid">
		</div>
		<p>
			나만의 MBTI 사이트입니다! <br> 아래 시작하기 버튼을 눌러 시작해 주십시오.
		</p>
		<button type="button" class="btn btn-outline-danger mt-3" onclick="js:begin()">시작하기</button>
	</section>

	<section id="qna">
  		<div class="status">
  			<div class="statusBar">
  			
  			</div>
  		</div>
      <div class="qBox my-5 py-3"> <!-- 마진 y축에 대해 5 패딩 y축에 대해 3 -->

      </div>
      <div class="answerBox">

      </div>
    </section>
    
    <section id="result">
    	<h1>당신의 결과는 ?</h1>
    	<div class="resultname">
    	
    	</div>
		<div id="resultImg" class="col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
		</div>
		<div class="resultDesc">
    	
    	</div>
		<button type="button">공유하기</button>
    </section>
      
    
  </div>

    <script type="text/javascript" src="/resources/js/data.js"></script>
    <script type="text/javascript" src="/resources/js/start.js"></script>
    <link rel="stylesheet" href="/resources/css/qna.css" />
    <link rel="stylesheet" href="/resources/css/result.css" />
    