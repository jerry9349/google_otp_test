<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<% request.setCharacterEncoding("UTF-8"); %>



<!DOCTYPE html>
<html lang="kr">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
	<meta content="telephone=no" name="format-detection">
	<meta http-equiv="imagetoolbar" content="no">
	<meta http-equiv="X-UA-Compatible" content="IE=10,chrome=1">
	<meta name="title" content="R2X" />
	<meta name="publisher" content="R2X" />
	<meta name="author" content="4th Industrial Revolution The Beginning Of Real Platform" />
	<meta name="robots" content="index,follow" />
	<meta property="og:url" content="http://r2x.org/" />
	<meta property="og:description" content="R2X Real economy "> 
	<meta property="og:image" content="./images/thumb.jpg">
	<meta property="og:title" content="R2X" />
	<meta property="og:site_name" content="R2X" />
	<meta property="og:author" content="R2X" />
	<meta property="og:type" content="website" />
	<!--if IE meta(http-equiv='X-UA-Compatible', content='IE=edge,chrome=1')-->
	<!--if lt IE 9 script(src='http://html5shiv.googlecode.com/svn/trunk/html5.js')-->

	<script src="https://code.jquery.com/jquery-latest.js"></script>

	<!-- 스타일시작 -->
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans:400,700" rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
	<link rel="stylesheet" href="css/htm5l-reset.css">
	<link rel="stylesheet" href="css/layout.css">
	<link rel="stylesheet" href="css/nav.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/xs.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
	<title>R2X</title>
</head>
<body role="document">


<!-- 팝업시작 여기부터 팝업 복사하세요--> 
<!-- The Modal --> 
    <div id="myModal" class="modal"> 
      <!-- Modal content --> 
      <div class="modal-content">
				<div class="pop_close" onClick="close_pop();" style="width:40px;float:right;height:54px;line-height:46px;background:#222;color:#fff">
					<span class="pop_bt" style="font-size: 13pt;">
						X
					</span>
				</div> 
				 <p class="pop_tit">Notice</p>

	
	
				<div class="pop_line"></div>

	  				<p class="pop_text">
                  </br>
               
                  
                  <span class="text_tit_02">R2X 개발 과정 2차 설명회 알림</span></br>
                  <p class="pop_text" style="background:#e8f5ff;padding:10px;line-height:26px;">
                  일시 :  10월 25일 목요일 오전 11시 , 오후 2시<br>
                  장소 :  ㈜다몬 4층 회의실<br>
                  접수방법 :  support@r2x.org 메일로 참가 신청<br>
                  - 메일작성시 희망하는 시간/성명/연락처 반드시 기재<br>
                  - 이름/시간/연락처 누락시 접수 신청 불가<br>
                  - 시간당 선착순 20명씩 참가 하실 수 있으며, 오실때 꼭 신분증 지참해주시면 됩니다. <br>
                  - 동반입장.대리인 절대 불가<br>
                  - 신청자 본인만 출입가능<br>
                  </p>
               </p>


					<!--
						
						<span class="text_tit_02">R2x 개발 과정에  대한 설명회  알림 </span></br>
						<p class="pop_text" style="background:#e8f5ff;padding:10px;line-height:26px;">
						  일시 :  10월 22일 월요일 오전 11시 , 오후 2시  <br>
						  장소 :  (주)다몬 4층 회의실  <br>
									 부산 금정구 회동동 209-6<br>
						  접수방법 : support@r2x.org 로 참가 신청 <br>
						  l   메일작성시 희망하는 시간대, 성명기재<br>
						  l   시간당 선착순 20명씩 참가 하실 수 있으며, 오실때 신분증 지참해주시면 됩니다.<br>
						</p>
					</p>
					-->
				
		
				
			    <div class="pop_close" onClick="close_pop();">
					<span class="pop_bt" style="font-size: 13pt;">
						CLOSE
					</span>
				</div>     

               
      </div>
    </div>
    <!--End Modal--> 
 <!-- 팝업끝 여기까지 복사하시면 됩니다.-->
 
 
    
 
    <script type="text/javascript">
      
        jQuery(document).ready(function() {
                $('#myModal').show();
        });
        //팝업 Close 기능
        function close_pop(flag) {
             $('#myModal').hide();
        };
        
      </script>


<div id="wrapper">
<header>
    <nav>
			<!-- Menu Toggle btn-->
			<div class="menu-toggle">
				<h3><img src="images/logo_w.png"></h3>
				<button type="button" id="menu-btn">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<!-- Responsive Menu Structure-->
			<!--Note: declare the Menu style in the data-menu-style="horizontal" (options: horizontal, vertical, accordion) -->
			<ul id="respMenu" class="ace-responsive-menu" data-menu-style="horizontal">
				  <li class="mainlogo">
				  <a href="./Main.do"><img src="images/logo_w.png"></a>
				  </li>
				  <li>
					<a href="#s2" class="scroll">                    
						<span class="title">What is R2X?</span>
					</a>
				</li>
				<li>
					<a href="#s3" class="scroll">              
						<span class="title">Support</span>
					</a>
					<ul>
						<li>
							<a href="./InvesmentAction.do">
							   Wallet					
							</a>
						</li>
						<li>
							<a href="mailto:support@r2x.org">support@r2x.org								
							</a>
						</li>
						<li>
							<a href="https://steemit.com/@r2x" target="_blank">
								R2X NEWS
							</a>
						</li>
					</ul>
				</li>
				 <li>
					<a href="#s6" class="scroll">          
						<span class="title">System</span>
					</a>
				</li>
				 <li>
					<a href="#s9" class="scroll">                 
						<span class="title">Roadmap</span>
					</a>
				</li>
				 <li>
					<a href="#s7" class="scroll">               
						<span class="title">Payment</span>
					</a>
				</li>

				<li>
					<a href="#s13" class="scroll"> 
						<span class="title">FAQ</span>
					</a>
				</li>
				<%if(session.getAttribute("id")==null) {%>
				 <li>
					<a href="./Login.do">
						<span class="title">Login</span>
					</a>
				</li>
				<%} else if(session.getAttribute("id")!=null){%>
				 <li>
					<a href="./InvesmentAction.do">
						<span class="title">My page</span>
					</a>
				</li>
				<!--  <li>
					<a href="./logout.jsp">
						<span class="title">Logout</span>
					</a>
				</li> -->
				<%}%>
				 <li>
					<a href="./Join.do">                   
						<span class="title login-bt-gra">Sign Up</span>
					</a>
				</li>
				
				
				<li>

               <a href="./Main.do" style="padding:0; margin-top:8px;"><div class="title  login-bt-border"><span>한국어</span></div></a>
               
               <!-- Level Two-->
               <ul>
                  <li>
                     <a href="./Main.do">
                        한국어
                     </a>
                  </li>
                  <li>
                     <a href="./en/Main.en">
                        English
                     </a>
                  </li>
               </ul>
            </li>
			</ul>
    </nav>
    <!-- End of Responsive Menu -->
</header>


<section id="s1" class="section1 smooth">

	<div class="wrap_box">
		<div class="main-title01 half left margin540">
			<div class="block animate" data-animate="fadeInUp" data-duration="1.0s" data-delay="0.1s">
				<h1 class="padding_b30"><img src="./images/r2x_text.png"> <span>Reality to X</span></h1>
			</div>
			<div class="block animate" data-animate="fadeInUp" data-duration="1.0s" data-delay="0.7s">
				<h2>The Business Model of R2X</h2>
				<h3>The new concept blockchain platform for use real life with fast, secure system</h3></div>
			</div>
			<div class="block animate" data-animate="fadeInUp" data-duration="1.0s" data-delay="0.9s">
				<div class="half right  margin540">
				  <div class="bt-gra clear margin10 width35 right"><a target="_blank" href="whitepaper/pok_kr.pdf">White paper</a></div>
				  <div class="bt-border clear margin10 width35 right"><span><a href="#s9" class="scroll">Road Map<a></span></div>
				</div>
			</div>
	</div>
</section>


<section id="s2" class="section2 smooth">
	<hr class="margin200">
	<div class="wrap_box ">
			<div class="title01 left block animate" data-animate="fadeInUp" data-duration="1.0s" data-delay="0.1s">			
				<h1>R2X 세계에 오신것을 <br>환영합니다.</h1>
				<hr class="margin50">
				<h2>
				방대한 양의 거래를 동시에 처리하려면 매우 복잡하고 실수 없는 기술을 구현해야 합니다.
R2X의 기술과 복합적 제휴를 통해 도시의 생태계 전반을 블록체인화 하여 R2X의 가치를 높힐 준비가 되어 있습니다.
				</h2>				
			</div>
			<div class="right block animate" data-animate="fadeInUp" data-duration="1.0s" data-delay="0.8s">		
				<div class="box">					
						<!--<video  controls>
							<source src="movie.mp4"  type="video/mp4" />
						</video>					 -->
						<img src="./images/main2_img.jpg">
				 </div>
			</div>
				<hr class="margin150">
				<div class="box block animate right" data-animate="fadeInUp" data-duration="1.0s" data-delay="1.8s">
					<div class="title01">						
						<h1>R2X의 비즈니스 모델</h1>
						<hr class="margin30">
						<h2>
							4세대 블록체인 기술을 통해 견고한 보안, 유연한 블록 크기 및 빠른 트랜잭션. <br>
							궁극적으로 실 생활에서 이뤄지는 모든 거래 시스템을 구축 하는것에 주안점을 두고 새로운 생태계를 만들어 갈 것 입니다.
						</h2>				
					</div>
				</div>
				<hr class="margin240">
		
	</div>
</section>

<section id="s3" class="section3 smooth">
	<div class="wrap_box block animate" data-animate="fadeInUp" data-duration="1.0s" data-delay="0.1s">	
			<div class="title01">
				<hr class="margin100">
				<h1>R2X 플랫폼 </h1>
				<hr class="margin50">
				<h2>
					거래가 많아져도, 더 이상 기다리지 않아도 됩니다<br>
거래를 매우 빠르게 해결 합니다
				</h2>
				<hr class="margin50">
				<div class="bt-gra center width20"><a target="_blank" href="./whitepaper/pok_kr.pdf">PDF Download</a>
				</div>
			</div>
	</div>
</section>



<section id="s4" class="section4 smooth">
	<div class="wrap_box">
			<div class="title01 left block animate" data-animate="fadeIn" data-duration="1.0s" data-delay="0.5s">
				<hr class="margin100">
				<h1><img src="./images/icon_01.jpg"></h1>
				<hr class="margin60">
				<h1>R2X block chain</h1>
				<hr class="margin20">
				<h2>
					블록체인의 경계가 허물어졌습니다<br>
					우리가 실생활에서 사용하고 있는 모든 거래를
					블록체인 세계에서도 경험할 수 있습니다.
				</h2>
			</div>
			<div class="title01 right block animate" data-animate="fadeIn" data-duration="1.0s" data-delay="1s">
				<hr class="margin100">
				<h1><img src="./images/icon_02.jpg"></h1>
				<hr class="margin60">
				<h1>R2X Super Node</h1>
				<hr class="margin20">
				<h2>
					다양한 유형의 블록 체인을 수용할 수 있도록
					설계된 AI 알고리즘 가변 노드 입니다.

				</h2>
			</div>
			<!-- 가운데공-->
			<div class="box width40 block animate ball" data-animate="pulse" data-duration="1.0s" data-delay="0.1s" data-iteration="5">
				<hr class="margin180">
				<h1>What is R2X?</h1>				
				<hr class="line">
				<h2>
					R2X는 4차 산업의 새로운 혁신 입니다.<br>
					신뢰할 수 있는 기술로 수천만 명의  사용자가 매우 빠르고
					안전하게 실 생활에서 쓸 수 있는 생태계를 제공합니다.  
				</h2>
			</div>
			<hr class="marigin100">
			<div class="title01 left block animate" data-animate="fadeIn" data-duration="1.0s" data-delay="1.5s">
				<hr class="margin300">
				<h1><img src="./images/icon_03.jpg"></h1>
				<hr class="margin60">
				<h1>Smart Wallet</h1>
				<hr class="margin20">
				<h2>
					앱에서 취소, 지연, 예약 등 7가지 기능으로
					사용자 편의는 물론 즐겨 찾기,닉네임 추가 기능으로 남녀노소 누구나 쉽게 거래할 수 있습니다.
 
				</h2>
			</div>
			<div class="title01 right block animate" data-animate="fadeIn" data-duration="1.0s" data-delay="2s">
				<hr class="margin300">
				<h1><img src="./images/icon_04.jpg"></h1>
				<hr class="margin50">
				<h1>R2X의 특허기술 (POK)</h1>
				<hr class="margin20">
				<h2>
					
				POW 및 POS 등의 기존의 증명 방식의 장점을 보강하고 단점을 극복하였으며, 특히 R2X의 이중보안은 어떤 공격도 막아낼 수 있는 R2X만의 특화된 기술입니다. 
				</h2>
			</div>
	</div>
</section>

<section id="s5" class="section5 smooth">
	<div class="wrap_box">
		
		<div class="half left block animate" data-animate="flip" data-duration="4.0s" data-delay="3s">
			<hr class="margin380">
			<div class="title01 padding20 block animate" data-animate="fadeIn" data-duration="2.0s" data-delay="0.5s">
				<h1><strong>R2X is finance</strong></h1>
			</div>
			<div class="title01 padding20 block animate" data-animate="fadeIn" data-duration="2.0s" data-delay="1s">
				<h1>It's safe</h1>
			</div>
			<div class="title01 padding20 block animate" data-animate="fadeIn" data-duration="2.0s" data-delay="1.5s">
				<h1>It's fast</h1>
			</div>
			<div class="title01 padding20 block animate" data-animate="fadeIn" data-duration="2.0s" data-delay="2s">
				<h1>It's simple</h1>
			</div>
			<div class="title01 padding20 block animate" data-animate="fadeIn" data-duration="2.0s" data-delay="2.5s">
				<h1><strong>R2X is innovation</strong></h1>
			</div>
		</div>
	</div>	
</section>


<section id="s6" class="section6 smooth">
	<div class="wrap_box">
			<div class="title01">
				<hr class="margin50">
				<h1>R2X Smart System</h1>
				<hr class="margin100">
			</div>
			<div class="box left">
				<div class="image left">
					<div class="circle  block animate" data-animate="bounceIn" data-duration="5.0s" data-delay="0s" data-iteration="10"><img src="./images/circle.png"></div>
					<div class="circle2  block animate" data-animate="fadeIn" data-duration="2.0s" data-delay="0.4s"><img src="./images/circle2.png"></div>
				</div>
				<div class="con left block animate" data-animate="fadeInUp" data-duration="1.0s" data-delay="0s" >
					<hr class="margin100">
					<h1>Very fast</h1>
					<hr class="margin20">
					<p>거래속도는 매우 중요한 요소 입니다<br>
					전 세계의 동시 다발적인 거래가 제한없이 빠르게 이뤄집니다.
					</p>
				</div>
			</div>
			<div class="box right">
				<div class="image right  block animate" data-animate="fadeInUp" data-duration="2.0s" data-delay="0.2s">
					<div class="safety block animate" data-animate="fadeIn" data-duration="5.0s" data-delay="0s" ><img src="./images/smart.png"></div>
					<div class="safety1 block animate" data-animate="swing" data-duration="2.0s" data-delay="0.4s" data-iteration="10"><img src="./images/smart1.png"></div>
				</div>
				<div class="con2 right block animate" data-animate="fadeInUp" data-duration="1.0s" data-delay="0.5s" >
					<hr class="margin160">
					<h1>Safety</h1>
					<hr class="margin20">
					<p>새로운 개념의 분산 구조와 다중 보안 시스템으로 각각의 접속단계에서
					분산 보안이 가능하며, 그 외 보안 단계에서 치밀한 계획을 세웠습니다.
					</p>
				</div>
			</div>
			<div class="box left">
				<div class="image left block animate" data-animate="fadeInUp" data-duration="2.0s" data-delay="0.2s">
					<div class="smart  block animate" data-animate="fadeIn" data-duration="5.0s" data-delay="0s" ><img src="./images/smart3.png"></div>
					<div class="smart1 block animate" data-animate="bounceIn" data-duration="2.0s" data-delay="0.4s"  data-iteration="10"><img src="./images/smart4.png"></div>
				</div>				
				<div class="con3 block animate" data-animate="fadeInUp"  data-duration="1.0s" data-delay="1.5s" >
					<hr class="margin200">
					<h1>Smart</h1>
					<hr class="margin20">
					<p>전송 지연, 취소, 예약, 알림, 닉네임 지정 등의 서비스를 통해 당신의 자산을 안전하게 보호해 줍니다
					</p>
				</div>
			</div>
			<hr class="margin200">
			<div class="box right">
				<div class="image right block animate" data-animate="fadeInUp" data-duration="2.0s" data-delay="0.2s">
					<div class="no1  block animate" data-animate="fadeIn" data-duration="5.0s" data-delay="0s"><img src="./images/no1.png"></div>
					<div class="no2 block animate" data-animate="rotateIn" data-duration="2.0s" data-delay="0.4s"  data-iteration="10"><img src="./images/no2.png"></div>
				</div>
				<div class="con4 right block animate" data-animate="fadeInUp"  data-duration="1.0s" data-delay="1.5s" >
					<hr class="margin120">
					<h1>No problem</h1>
					<hr class="margin20">
					<p>거래가 많아져도, 더 이상 기다리지 않아도 됩니다.<br> 
					매우 빠르게 해결 합니다.
					</p>
				</div>
			</div>
	</div>	
</section>



<section id="s7" class="section7 smooth gray_bg">
	<div class="wrap_box">
			<div class="title01 left block animate half" data-animate="fadeInUp" data-duration="2.0s" data-delay="0.1s">
				<hr class="margin400">
				<h2></h2>
				<hr class="margin30">
				<h1>Payment</h1>
				<hr class="margin30">
				<p>다양한 코인이 Smart Wallet을 통해 RTX coin으로 변환 됩니다
그리고 언제 어디서든 자유롭게 사용할 수 있습니다.</p>
			</div>
			<div class="image right block animate half" data-animate="fadeInUp" data-duration="2.0s" data-delay="1s">
			<hr class="margin160">
				<img src="./images/pay_icon01.png">
			</div>
	</div>
</section>



<section id="s8" class="section8 smooth ">
   <div class="wrap_box">
         <div class="title01 right block half animate" data-animate="slideInRight" data-duration="2.0s" data-delay="0.1s">
            <hr class="margin400">
            <h2></h2>
            <hr class="margin30">
            <h1>Smart Wallet</h1>
            <hr class="margin30">
            <p>Smart Wallet 기술을 이용한 RTX Wallet에는 기존의 코인의 가치를 양방향 교환하여 원하는 순서, 원하는 타입으로 Payment 기능을 사용할 수 있습니다.
            </p>
         </div>
         <div class="image left block animate " data-animate="slideInLeft" data-duration="2.0s" data-delay="0.1s">
         <hr class="margin150">
            <img src="./images/pay_icon02.png">
         </div>

   </div>   
</section>

<section id="s9" class="section9 smooth ">
   <div class="wrap_box">
      <div class="box">
         <div class="title01 center">
            <hr class="margin100">
            <h1>Roadmap</h1>
            <hr class="margin50">            
         </div>
         
         <div class="roadbox  block animate" data-animate="flipInX" data-duration="2.0s" data-delay="0.3s">            
            <ul>
            <h1>Q1</h1>            
               <li>기술 논문 출판 ver 0.1   </li>
               <li>R2X 토큰 판매 개시    </li>
               <li>초기 인터체인 개발   </li>
               <li>POK 특허 등록   </li>
            </ul>   
         </div>

         <div class="roadbox  block animate" data-animate="flipInX" data-duration="2.0s" data-delay="0.6s" >         
            <ul>
            <h1>Q2</h1>            
               <li>토큰 배포 완료</li>
               <li>POK 초기 구현</li>    
               <li>기술 로드맵 공개</li>
            </ul>   
         </div>
         <div class="roadbox  block animate" data-animate="flipInX" data-duration="2.0s" data-delay="0.9s">            
            <ul>
            <h1>Q3</h1>              <!--  
               <li>마켓과의 연동</li> -->
               <li>POK 인터페이스 확장</li>
            </ul>   
         </div>
         <div class="roadbox  block animate" data-animate="flipInX" data-duration="2.0s" data-delay="1.2s" >            
            <ul>
            <h1>Q4</h1>            
               <li>기술 논문 출판 ver 0.2  </li>
               <li>주요 네트워크 설정 </li>
               <li>R2X 메인넷 완료</li>
               <li>Super Node 구현</li>
               <li>Smart wallet 구현</li>
            </ul>   
         </div>
         <div class="roadbox  block animate" data-animate="flipInX" data-duration="2.0s" data-delay="1.5s">            
            <ul>
            <h1>2019 Q1</h1>            
               <li>메인넷 노드 확장  </li>
               <li>R2X 플랫폼 Dapp 추가 </li>
               <li>Super Node scalability </li>
               <li>R2X 인증 API </li>
            </ul>   
         </div>
         <div class="roadbox  block animate" data-animate="flipInX" data-duration="5.0s" data-delay="1.8s" >         
            <ul>
            <h1>2019 Q2</h1>            
               <li>R2X 플랫폼 확장</li>
               <li>R2X 생태계 실현  </li>
               <li>상용화 플랫폼 구축</li>
               <li>R2X 네트워크 구축</li>
            </ul>   
         </div>
         <div class="roadbox  block animate" data-animate="flipInX" data-duration="5.0s" data-delay="2.1s">            
            <ul>
            <h1>이후</h1>
               <li>R2X를 즐겨라</li>
            </ul>
         </div> 
      </div>
   </div>
      <picture> 
           <source srcset="./images/1024_road.jpg" media="(max-width: 767px)">
           <source srcset="./images/1200.jpg" media="(max-width:1200px)">
           <source srcset="./images/1440.jpg" >
           <img src="./images/1440.jpg" style="width:100%;">
      </picture>   
</section>


<section id="s10" class="section10 smooth">
	<div class="wrap_box">
		<div class="title01 padding80 center block animate" data-animate="fadeInUp" data-duration="1.5s" data-delay="0.1s">
			<h1>Team</h1>
			<h2>
			ADVISOR
			</h2>
		</div>	
		<div class="box">
			<div class="width48 left">
				<div class="align-center  block animate" data-animate="fadeInUp" data-duration="1.5s" data-delay="0.1s">
					<img src="./images/ad_01.png">	
				</div>
				<div class="box align-center  block animate" data-animate="fadeInUp" data-duration="1.5s" data-delay="0.1s">					
					<h2><span>Gilbert Keisse</span><br>Belgium</h2>
					<hr class="margin20">
					<p>	International Financial Consultant
						Master degree in International Marketing<br><br>

						-Nancy Reagan Foundation in USA as Financial Advisor
						-Special Assistant President of Africa
						-Independent International Financial Consultant for Several companies and humanitarian
						-Dr. Oppenheimer Bio-remediation Services Manager in USA
						-AIDAECO’DEV - NGO in FRANCE as CFO / AIDAECO’DEV
						-HONG KONG AIDA ECO’DEV TRUST (NGO) Treasurer
					</p>
				</div>
			</div>	
			<div class="width48 right clearright">
				<div class="align-center  block animate" data-animate="fadeInUp" data-duration="1.5s" data-delay="0.1s">
					<img src="./images/ad_02.png">	
				</div>
				<div class="box align-center  block animate" data-animate="fadeInUp" data-duration="1.5s" data-delay="0.1s">					
					<h2><span>Xavier Jeruse </span><br>France</h2>
					<hr class="margin20">
					<p>	European Union Business Consultant<br><br>

						-France & Asia, Project Financing Consultants
						ODBT & EFE Venture avec Project Finance Manager
						-France & Asia Project Finance Consultant
						-Financial Manager for Overseas Development Bank Projects , R&D Industry Manager
					</p>
				</div>
			</div>	
			<hr class="margin100">
			<div class="width48 left clearleft">
				<div class="align-center  block animate" data-animate="fadeInUp" data-duration="1.5s" data-delay="0.1s">
					<img src="./images/ad_03.png">	
				</div>
				<div class="box align-center  block animate" data-animate="fadeInUp" data-duration="1.5s" data-delay="0.1s">					
					<h2><span>Marcos Wolman</span><br>Argentina</h2>
					<hr class="margin20">
					<p>	International Business Developer<br><br>

						Experts in Business Strategy and Management
						- CEO and owner of Leumi Bank in Canada
						- Director of Toronto, Canada and Latam ; Executive Vice President of Leumi Bank, Switzerland
						- Private Bank Vice Chairman, Managing Director (Customer Responsibility : USD 500,000,000) 
						- Chief executive in mutual funds, stock sales and marketing
					</p>
				</div>
			</div>	
	
			<div class="width48 right">
				<div class="align-center  block animate" data-animate="fadeInUp" data-duration="1.5s" data-delay="0.1s">
					<img src="./images/ad_04.png">	
				</div>
				<div class="box align-center  block animate" data-animate="fadeInUp" data-duration="1.5s" data-delay="0.1s">					
					<h2><span>Cyril Martique French</span><br>Colombia</h2>
					<hr class="margin20">
					<p>International Business Developer<br><br>
						-IDeA SAS - Vice President of Business Development and Finance, Vertek Systems Argentina
						Argentina New Renewable Energy Wall
						Chief Financial Officer
						-Chief Executive Officer of Vertek Systems Argentine Business Development
						-Prevoir Group - Vice President, Business Development, Asia
						-Responsible for the understanding of Paraguay's innovative technologies, electrical production
						-CNP Assurances (top 15 life insurance) Monitoring IFRS implementation in all the group. 
						Asset CNP over € 30 billion
					</p>
				</div>
			</div>
			

		<hr class="margin100">
		<div class="title01 padding80 center block animate clear" data-animate="fadeInUp" data-duration="1.5s" data-delay="0.1s">
			<h1>Team</h1>
			<h2>
			TECHNICAL LEADER
			</h2>
		</div>	
		<div class="box1">
			<div class="left ">
				<div class="align-center left inline  block animate "   data-animate="fadeInUp" data-duration="1.5s" data-delay="0.1s">
					<img src="./images/yun.png">	
				</div>
				<div class="block animate left inline"   data-animate="fadeInUp" data-duration="1.5s" data-delay="0.1s">					
					<h2><span>Kyungmin Yoon</span><br>Korea</h2>
					<hr class="margin20">
					<p>	DMpay Development<br>
						Mining Type-POK Developers<br>
						Statement of Financial Services Commission Chairman / 2018.2.18<br>
						Global Enterprise Target / 2018.3.23
					</p>
				</div>
			</div>	
	</div>
</section>




<!-- 클라이언트 숨김
<section id="s11" class="section11 smooth ">
	<div class="wrap_box padding20">
		<div class="title01 padding50">
			<h1 class="align-center">Our Client</h1>
		</div>	
		<ul >
			<li class="inline width33 align-center  block animate" data-animate="fadeIn" data-duration="2.0s" data-delay="0.1s">
				<img src="./images/client_01.png">
			</li>
			<li class="inline width33 align-center  block animate" data-animate="fadeIn" data-duration="2.0s" data-delay="0.5s">
				<img src="./images/client_02.png">
			</li>
			<li class="inline width33 align-center  block animate" data-animate="fadeIn" data-duration="2.0s" data-delay="1s">
				<img src="./images/client_03.png">
			</li>
		</ul>
			
	</div>
</section>
-->

<section id="s13" class="section13 smooth">
	<div class="wrap_box">
		<div class="title01 padding80 center block animate fadeInUp animated" data-animate="fadeInUp" data-duration="1.5s" data-delay="0.1s" style="animation-duration: 1.5s; animation-delay: 0.1s; visibility: visible;">
			<h1>FAQ</h1>
		</div>
		<!--Horizontal Tab-->
	<div id="horizontalTab">
		<ul>
			<li><a href="#tab-1"> R2X Token</a></li>
			<li><a href="#tab-2">Protocol</a></li>
           
		</ul>

		<div id="tab-1">
          
			
			<div id="container">

				<ul class="faq">
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp;What is a Token?</li>
					<li class="a">
					
						<p>
							&nbsp;&nbsp;In general, Token refers to Digital Asset used by DApp built on Blockchain Technology. </br>
							The token can be owned by anyone and can be transferred to others if there is an exchange like the Sky Assets Exchange (SAEX) of the R2X Platform in Digital Assets.   </br>
							The token can represent digital assets with value for all contents in R2X's various Clouds (DApp).</br>
							A trust basis is valued in cryptocurrency because they provide a way to create the tokens that are immutable, distributed and counterfeit-proof.
							
						</p>
					</li>
					
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp;What is RTX?</li>
					<li class="a">
						<p>
							RTX (Reality To X Token) is a Token built on the R2X Platform. We use the Ethereum-based ERC20 standard Token prior to Main Net. </br>
							RTX is designed for the utility usage of various applications such as R2X Platform, SAEX, and Cloud.
						</p>
					</li>
					
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp;What is the policy on incentives?</li>
					<li class="a">
						<p>
							Basic default incentives and  RIRS Incentives by applying Ranking System.</br></br>
							<strong>Basic Incentives</strong></br>
							R2X Compensation policy for nodes participating in Blockchain Network.
							
							
							
							<strong>RIRS Incentives</strong></br>
							Follows the compensation standard that is paid based on the RIRS (R2X Incentives Ranking System) standard.  RIRS analyzes the cumulative evaluation data (RTX transaction volume, SAEX transaction volume, Ranking System Volume, and Freezing Fee), predicts the optimal future demand issuance quantity, and evaluates it based on the five elements of Ranking Algorithm. 
							
							
							<strong>5 factors of Ranking Algorithm</strong></br>
							NP : Number of Points (Like Upvotes or Likes)</br>
							NC : Number of Comments</br>
							NV : Number of Views</br>
							Tcc : Time since Creation Contents</br>
							Tlu : Time since Last Update</br>
							<img src="./images/faq_img.jpg">
							</br></br>
							This incentive policy will appropriately balance the token distribution. And the RIRS can promote positive operations for the network while suppressing contradictive activities.
						</p>
							
						
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp;When can I get a RTX Token?</li>
					<li class="a">
						<p>
							
							&nbsp;&nbsp;The RTX tokens are being distributed to personal wallets in r2x.org for those who participated in the way we informed you in the official email r2xinfo@gmail.com</br></br>
							&nbsp;&nbsp;The distributed RTX Tokens swap with ERC20 RTX tokens will be processed sequentially to each personal wallets like MyetherWallet around March 15, 2018.</br>
							&nbsp;&nbsp;The swap related messages will be announced through tutorials and public notices.</br></br>
							&nbsp;&nbsp;There will be a public notice at <a href="http://r2x.org" target="_blank" style="color:red">http://r2x.org/</a>  if the schedule needs to be changed.
	
						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp; Token Specification</li>
					<li class="a">
						<p>
							<strong>•&nbsp;&nbsp; What is the total quantity of RTX Token?</strong></br>
							6,000,000,000 RTX total supply </br></br>

							<strong>•&nbsp;&nbsp;  What are the sales quantities and open mining quantities of RTX Tokens?</strong></br>
							ublic Sales: 1,600,000,000 RTX</br>
							Open Mining: 3,200,000,000 RTX</br></br>

							<strong>Distribution of 1,000,000,000 RTX</strong></br> 
							- Foundation 12% : r2x communications; operating costs</br>
							- Bounty 12% : Marketing </br>
							- Team Advisor 6% : Team Advisor Incentive</br>
							- Technology Development 6% : Blockchain & Platform development, DApp develpoment & SAEX Operating, Up-grade.</br>
							- Strategy Partner 4% : R2X Global Business expansion & RTX marketing expansion</br></br>

							The 10% of RTX Token given to Team Advisor(6%) and Strategy Partner(4%) will be frozen for 6 months.

						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp; Offering Summary  </li>
					<li class="a">
						<p>
								<strong>•&nbsp;&nbsp; Currency Accepted</strong> : ETH Only</br>
								Ethereum is accepted during Token Sale </br></br>

								<strong>•&nbsp;&nbsp; Rights</strong> </br>
								- No voting or membership rights </br>
								- No sharing of revenue, dividends etc. </br>
								<strong>•&nbsp;&nbsp; Refunds – None</strong></br></br>

								<strong>•&nbsp;&nbsp; Is there a limit on the minimum purchase amount or the maximum purchase amount on the RTX Token?</strong></br>
								Minimum purchase amount is 5 ETH. The maximum purchase amount is limited to 10,000 ETH regardless of individual or agency. These restrictions are intended to encourage the sale of tokens, but to prevent large volumes from being concentrated on a specific individual, group or organization.</br></br>

								<strong>•&nbsp;&nbsp; When can I get a RTX Token?</strong></br>
								It will be transfer to MyEtherWallet as an ERC20 Token after March 4, 2018. 
								There will be a public announcement at <a href="http://r2x.org" target="_blank" style="color:red">http://r2x.org/</a> for changes on schedule.
						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp; Where is the R2X Foundation headquarter located?</li>
					<li class="a">
						<p>
								•&nbsp;&nbsp;R2X Foundation:  1111 Babcock Rd.  San Antonio 
Texas 78201 U.S.A<br>&nbsp;&nbsp;&nbsp;&nbsp;M. +1 210-636-6217
								
								<!-- •&nbsp;&nbsp;Hong Kong Office: 21/F, Tung Sun Commercial Centre, 194-200 Lockhart Road, Wan Chai, Hong Kong
								 -->
							
						</p>
					</li>
				</ul>
			</div>
		</div>
		<!--TAB1 END-->

		<div id="tab-2">
			<div id="container">
				<ul class="faq">
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp;What is PoK (Proof Of Key)?</li>
					<li class="a">
						
						<p>
							&nbsp;&nbsp;PoK (Proof of Key) is a new concept Blockchain Consensus Protocol/Algorithm applied to R2X. We introduced Emergent Consensus (A consensus derivation method in which nodes in an independent network all follow the same rules, resulting in asynchronous and interactive results and reliable implementation of distributed books), an advantage of the POW( Proof of Work) system, PoS (Proof of Stake) was developed to complement some of the weaknesses.</br>
							PoK  (Proof Of Key) is a new standard that can accept Smart Nodes(The Key owner) that are qualified to participate in authentication of transaction requests broadcasted on Blockchain Network. </br>
							In other words, it minimizes the waste of energy (power) required for operation  while reducing the investment of huge cost for purchase of mining machine in POW system.
							PoK  (Proof of Key) is a way to improve the disadvantage of concentrating on those who have a lot of shares (Token.)</br></br>
							&nbsp;&nbsp;It will provide a foundation for the acceptance of the compensation policy that can be an even distribution to the participants and the care of the global environment through energy saving. PoK  has been developed with the aim of the next generation of the Blockchain Consensus Protocol which focuses on strengthening security and improves insufficiencies. </br></br>
							Please, refer to the white paper for details. 
						</p>
					</li>
						
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp;What kind of problem does PoK  (Proof of Key) solve?</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;The various DApp have been created and continue to be developed throughout the implementation of Blockchain technology, on the other hand, the number of malicious attacks on the system is also growing.  </br></br>
							The PoK  focuses on security especially on Sybil attack by applying the physical Key in order to have access to the system. </br>
							The Keys are eligible to be obtained by the Client in a legitimite manner. </br>
							The digital Signature using private key is included in communication with Super Node, so that Blockchain Network System can be safely maintained. </br></br>
							The advantage of this approach is that it is possible to maintain security in the most vulnerable situations in a decentralized, open platform. </br>
							In other words, when the network is initiated before a strong network is formed, the hash power in the network can be obtained with small effort/cost.  </br>
							On the other hand, the PoK  approach is a physical approach that reduces risk and improves security.
						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp;What are the advantages of the PoK (Proof of Key) method applied to R2X compared to existing algorithms such as POW and POS?</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;In the conventional agreement algorithm like POW and POS, we have to overcome limitations on performance and scalability because authenticity/validity and priority of the block is assigned by when all the participating nodes agree on it.</br></br>
							&nbsp;&nbsp;PoK  has taken advantage of the existing consensus algorithm and has made a structure that can reduce the communication error between the nodes scattered around the world.  </br></br>
							&nbsp;&nbsp;We have created a structure that can reduce communication errors and speed up the communication speed between nodes scattered around the world.</br></br>
							&nbsp;&nbsp;For more information, see the white paper.</br>
				
						</p>
					</li>     
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp;How does decentralized governance work?</li>
					<li class="a">
						<p>
								
							&nbsp;&nbsp;100 million of R2X Token (RTX) is used in Foundation, Bounty, Team Advisor, Technology Development, Strategy Partner, etc.</br>
							&nbsp;&nbsp;160 millions of RTX tokens are available through Token Sale Event.</br></br>
							&nbsp;&nbsp;For more information on the Token Sale Event, please check at  <a href="http://r2x.org" target="_blank" style="color:red">http://r2x.org/</a> to receive updates about the event, the detailed information will be sent by E-mail.	
						</p>
					</li> 
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp; Token Specification</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;The R2X Project has begun with the spirit of dedication towards society. It is still in progress, but as this project progresses, the intention will become a reality. Basically, in R2X, we have been working to affiliate Decentralized Governance in our system. </br>
							&nbsp;&nbsp;R2X Project is the area where you have to research and experiment continuously as long as it exists.</br></br>

							&nbsp;&nbsp;Cloud (DApp) connected to Sky Chain Network operates independently under its control.  The requested contents are sent to the Sky Nodes through RCN (R2X Cloud Network) & Sky Chain Network Communicator when Network Channels with other Clouds are created. You can share information between Clouds participating in Network Channels. </br></br>
							&nbsp;&nbsp;The components that violate Decentralized Governance can be excluded in Sky Chain Network System, and all Clouds will have equal status. Also, the demand and supply volume of the SAEX (Sky Asset Exchange) is not limited to operate based on SAEX's scalable structure. Incentives are required to maintain the Sky Chain Network System. The clients who use the service will pay the fee corresponding to the content or currency transaction, Sky Node & SAEX, which are responsible for maintaining the Sky Chain Network System, are designed to receive compensation based on the RIRS (R2X Incentive Ranking System) according to their contribution. RIRS has various criteria such as the volume of transactions by SAEX and the load factor of the Sky Node.</br></br>
							The R2X Project is autonomous. The SkyNode, RCN, Sky Chain, SAEX, and so on, we are making an effort to implement a structure that is not centralized on distributed components.</br></br>
							&nbsp;&nbsp;The Clouds participating in the Sky Chain Network will be able to trade in a variety of ways, and the benefits to everyone participating in the R2X ecosystem will be maximized as the utility value increases.
						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp;When is the Open Source available?  </li>
					<li class="a">
						<p>
							&nbsp;&nbsp;We will release the alpha version of the R2X Platform before the Main Net of R2X and perform the work of supplementing the Private Network Channel through a sufficient amount of test. These include testing for security, speed, decentralization, scalability testing, UI quality, real-time payment accessibility, R2X Incentive Ranking System (RIRS) responsiveness, and the functionality of RPCS (R2X Public Cloud Service) Tool.</br></br>
							&nbsp;&nbsp;The Beta will be released after completing the function test for each process in the alpha version of the integration, and then it will be released to the R2X Blockchain Network Channel, and the Open Source Code will be released.</br></br>
							Q3. 2018.  Open Source of R2X Blockchain</br>
							Q4. 2018.  Main Net of R2X
						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp; Smart Node</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;The client has the Key that works with the R2X variable platform system and becomes a Smart Node when the network is activated.  The client participates validation steps and certification on R2X Blockchain Network.
						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp; Super Node(Full Node)</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;The Super node contains full blockchain (entire Block from Genesis block to Latest block) oversees MegaBlock via BDTP. It connects to multiple Smart Nodes and connects to Smart Wallet via SCVM (Smart Contract Virtual Machine). </br></br>
							&nbsp;&nbsp;The Smart nodes (after emergent consensus) containing authentication information broadcasts to the Super Node Network, and when a match of 51% or more is confirmed, a block is created and added to the blockchain. At the same time, it sends the latest generated block to BDTP to control the operation of transforming and inverse transforming into Megablock.</br></br>

							&nbsp;&nbsp;Super Node coordinates between Blockchain and Megablock and maintains stability in response to variables.  Super Nodes can't participate because they do not have the right to vote in the decision making through verification and authentication between Smart Nodes. </br></br>
							&nbsp;&nbsp;The information on incentive changes in RIRS is broadcasted to the network, and the information is used to decide whether to reflect through the voting between Super Nodes.
						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp;BDTP(Blockchain Digest Transmission Protocol)</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;BDTP is a Blockchain Digest Transmission Protocol that has a close relationship between Blockchain and Megablock via Super Node.</br></br>
							&nbsp;&nbsp;The Super Node generates a block by transaction verification and authentication between Smart Nodes(Emergent Consensus).</br>
							Also, BDTP plays an important role in transforming and inversely transforming the latest generated blocks into Megablocks.</br>
						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp; Quest Gate</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;Quest Gate (part of BDTP) is a gateway between Super Node and Megablock. There is a Data Buffer, which is operated by BDTP and has both unidirectional and bidirectional characteristics.</br>
							Multilayer Databus Hyper Logic (MDHL) technology helps BDTP to work.</br>
						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp; Megablock</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;It is created in the Super Node.</br> The Mega block has a role as a block for storing information (transaction records, contents) modified via BDTP. It can be accessed only through BDTP.
						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp; Smart Wallet</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;The Smart Wallet has evolved from the concept of a simple wallet application. It connects to Smart Node and RNS (R2X Name Service) to provide users with new and convenient services.</br></br>
							&nbsp;&nbsp;Smart Wallet is designed to give you easy access and understanding of transaction history and balance.It made possible for users to trade the way they want by selecting options when requesting a transaction.  It also has a function to connect with other Smart Wallets that has different wallet addresses, so that users can scan all the assets in one Smart Wallet.</br></br>
							Please refer to our white paper.
						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp; Cloud</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;Nodes (Smart Nodes & Super Nodes) are associated units constructed with the same purpose. It operates with independent governance. This includes DApp within R2X platform.
						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp; RCN(R2X Cloud Network)</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;It is a combination of connections that exchanges signals with the Sky Node periodically and shares information.
						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp;Sky Node</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;It is part of the Sky Chain aimed at coordination with RCN to verify the trade between Clouds. However, it cannot participate in decisions of clouds. </br>
							&nbsp;&nbsp;It has the function to exchange rate and value coordination. It has power to verifying transactions and generating deals in real-time and promises agreements. (delayed, scheduled)</br></br>
							&nbsp;&nbsp;Each Sky Node operates independently under the same Artificial Intelligence Consensus Algorithm (AICA).
						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp; Sky Chain</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;Various types of Clouds are interconnected via RCN.</br>
							&nbsp;&nbsp;Sky chain includes Sky Nodes for configuring their own governance to validate transactions occurring between clouds. 
						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp; SCVM(Smart Contract Virtual Machine)</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;SCVM is a virtual machine that can be implemented in R2X Platform Management and can implement Smart Contract. R2X blockchain system has an inter-connecting structure but operates independently.</br></br>
							&nbsp;&nbsp;To create a system that can be applied to real life, it plays an important role in connection and coordination between Smart Wallet, RCN and Super Node and Clouds in real time.</br></br>
							&nbsp;&nbsp;SCVM is equipped with an algorithm(State Variable Algorithm) that allows addressing in various situations where changes are made to a Smart Contract with a new cloud or a Smart Contract with an existing Cloud. Therefore, it is possible to immediately cope with the situation by simply updating the state variable when it occurs.</br></br>
							&nbsp;&nbsp;It is easy to distribute Smart Contract through Communicator, which enhances the convenience of users who want to build Cloud.
						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp; Platform Management</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;Platform Management is equipped with the Multi-cloud Management Platform Algorithm, which allows users easy access where Cloud is connected.</br>
							&nbsp;&nbsp;The UI (User Interface) based Dashboard optimizes selection and management functions. It is built to integrate and manage the Public Cloud Service.</br></br>
							&nbsp;&nbsp;The R2X Public Cloud Service (RPCS) Tool helps accelerate cloud development and enables smooth connection to existing clouds. </br>
						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp; Communicator</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;It allows Clouds containing individual Governance & Blockchain to share info & Contents changes to other clouds that based Sky Chain and RCN.</br>
							&nbsp;&nbsp;It is divided into public communicator and private communicator. The cloud is open to all clouds via public communicator participating in the network.</br>
							&nbsp;&nbsp;Private Communicator configures channels specific to each cloud, such as between individual Clouds or Clouds in group, and acts as a communicator within it.</br>
						</p>
					</li>
				<!--<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp; Communicator</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;개별적인 Governance & Blockchain을 가진 Cloud들의 Info & Contents의 변경내용 등을 Sky Chain 및 RCN을 기반으로 Cloud들에 전달하여 공유하게 하는 역할을 합니다.</br></br>
							&nbsp;&nbsp;Sky Chain Network Communicator로서 Public Communicator와 Private Communicator로 구분됩니다.</br>
							Public Communicator는 Network에 참여한 모든 Cloud에게 공개 전달하며 Private Communicator는 개별 Cloud 간 또는 연합 Cloud간 등 Cloud별로 한정된 Channel을 구성하고 그 안에서 전달자의 역할을 합니다.
						</p>
					</li>-->
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp; SAEX(Sky Asset Exchange)</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;The Sky Asset Exchange System is a decentralized exchange that combines the advantages of Centralized Exchange with the convenience, accessibility, and other advanced trading capabilities. It provides a new NG-DEM (Next Generation Decentralized Exchange Market)</br> 
							&nbsp;&nbsp;A new generation decentralized exchange that uses convergence algorithms to distinguish from other exchanges that are still at the entry level.</br> </br> 

							&nbsp;&nbsp;SAEX is the Public Sky chain Network Exchange using the Sky Chain Network that connects individual governance & blockchains. It uses RTX as the base currency.</br>
							&nbsp;&nbsp;The Exchange is based on Transaction Analysis Artificial Intelligent, which provides an efficient trading model by analyzing the IDP (Integrated Digest Protocol) installed on the R2X Platform and the frequency, price, and transaction volume.</br>
							&nbsp;&nbsp;R2X Platform-based Clouds can participate in NG-DEM  (Next Generation Decentralized Exchange Market)  linked to Public Sky Chain Network by receiving SAEX Code that is IDP and transaction analysis A.I.</br></br>
							&nbsp;&nbsp;It provides the average transaction price of Exchange Reserve Data (ERD) and provides various types of trading functions from the transaction model that goes to the next stage when the transaction is approved. This model maximizes the convenience of SAEX users by inducing autonomous influx and exchange by arbitrage transaction.</br>
							&nbsp;&nbsp;Also, CMS (Coin Mixing Service - Anonymous Transaction Function) is provided to increase transaction anonymity.</br></br>
							&nbsp;&nbsp;It can apply Cloud Multi-Signature Escrow System that is distributed at the time of NG-DEM construction. </br>  
							&nbsp;&nbsp; SAEX broadcasts requested transaction to SAEX linked to the Sky Chain Network, SAEX confirms its correspondence through the process of verification of the information in Sky Node. </br> </br>  
							&nbsp;&nbsp;Then the transaction is decrypted and sends them to PSNEM. Now the transaction is valid.</br>
							&nbsp;&nbsp;This method creates a structure in which the user's personal information is protected and can be traded without disclosure. In addition, because it is dispersed through Sky Nodes, the preservation of personal information is very safe.</br> </br>  
							&nbsp;&nbsp;The various types of Crypto-Currency can apply in real life, and users can trust the system as the participating Cloud and User increases in SAEX system.</br>
							&nbsp;&nbsp;There are many inconveniences involved in dealing with various types of Blockchain and consensus algorithms that are not linked to the Sky Chain Network. &nbsp;&nbsp;Because it needs flexible interconnection with various consensus algorithms. </br>
							&nbsp;&nbsp;It can be accessed by the trading method using RTX conversion. </br>
							&nbsp;&nbsp;The final model we are pursuing is building a decentralized trading system that does not require an RTX as intermediation.

						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp;What language is used for Platform and Sky Chain and SCVM to facilitate cloud deployment?</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;R2X's Platform Management includes the Multi-cloud Management Platform Algorithm.</br>
							The R2X Public Cloud Service (RPCS) Tool provides a platform to accelerate cloud development. </br></br>
							&nbsp;&nbsp;Python is basically used, and it can receive and execute compiled code when expanding the scope of support other languages such as Java in the future.
						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp;How can I participate in Cloud development?</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;Currently, participation in Cloud Development is only available for partners who have the contract with R2X. </br>The public will be able to participate according to the roadmap provided in the future.
						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp;Can I use the Smart Contract feature when using DApp not connected to Sky Chain?</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;No. Currently, you can not use the Smart Contract feature with DApp that is not connected to Sky Chain.
						</p>
					</li>
					<li class="q"><img src="./images/arrow.png">&nbsp;&nbsp;What language is used for Platform and Sky Chain and SCVM to facilitate cloud deployment?</li>
					<li class="a">
						<p>
							&nbsp;&nbsp;R2X's Platform Management includes the Multi-cloud Management Platform Algorithm.</br>
							The R2X Public Cloud Service (RPCS) Tool provides a platform to accelerate cloud development. </br></br>
							&nbsp;&nbsp;Python is basically used, and it can receive and execute compiled code when expanding the scope of support other languages such as Java in the future.
						</p>
					</li>
				</ul>
			</div>	
		</div>
        <!--TAB2 END-->     
	</div> 
<!--Horizontal Tab END-->

	</div>
</section>

<section id="s12" class="section12 smooth">
 <div class=" block animate" data-animate="fadeIn" data-duration="3.0s" data-delay="0.1s">
		<hr class="margin240">
			<div class="wrap_box align-center">
				<img src="./images/contact_icon01.png" class="logo_12">
			</div>
		<hr class="margin60">
			<div class="wrap_box center">
			<button class="bt-gra inline width20"><a href="./Login.do">LOGIN</a></button>
			<button class="bt-border1 inline width20"><a href="./Join.do"><span>JOIN</span></a></button>
			<hr class="margin60">
			</div>	
			<ul class="center">
				<li class="inline"><a href="https://steemit.com/@r2x" target="_blank"><img src="./images/sns01.png"></a></li>
				<li class="inline"><a href="https://www.facebook.com/jang.damon.739" target="_blank"><img src="./images/sns02.png"></li>
				<li class="inline"><a href="mailto:support@r2x.org"><img src="./images/sns03.png"></a></li>

			</ul>
</div>
</section>

<footer>
	<div class="wrap_box center  block animate" data-animate="fadeIn" data-duration="2.0s" data-delay="0.1s">	

		<div class="f_logo padding20"><img src="images/logo_g.png" ></div>
		<hr class="margin10">
		<p class="mail"><a href="mailto:support@r2x.org">support@r2x.org</a></p>
		<hr class="f_line">
		<hr class="margin10">
		<div class="f_menu"><a href="#s2" class="scroll">What is R2X?</a> <a href="https://steemit.com/@r2x" target="_blank">Support</a><a href="#s6" class="scroll" > System</a>
		<a href="#s9" class="scroll">Roadmap</a> <a href="#s7" class="scroll"> Payment</a><a href="./Login.do">Login</a></div>
	<hr class="margin40">
	<div class="ad">
		<address>
		<strong>R2X Foundation</strong>:  1111 Babcock Rd. San Antonio, Texas 78201 United States of America<!-- 3150 Wilshire Blvd Suite1918 Los Angeles, California, 90010 United States of America --><br>
		<!-- <strong>Hong Kong Office</strong>: 21/F, Tung Sun Commercial Centre, 194-200 Lockhart Road, Wan Chai, Hong Kong
		 --></address>
		<hr class="margin20">
		<p class="text_h3">Copyright © 2018 <span class="f_r2">R2X</span>. ALL RIGHTS RESERVED.</p>
									
	</div>	
	</div>
	<div class="gotop"><a href="#top"><img src="./images/gotop.png"></a></div>
</footer>

</div>




	


<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
<!-- Responsive Tabs JS -->
<script src="js/jquery.responsiveTabs.js" type="text/javascript"></script>
<script src="js/dddd.js" type="text/javascript"></script>
<script src="js/tabimg.js" type="text/javascript"></script>


<!--nav -->

    <!--Scripts-->
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/ace-responsive-menu.js" type="text/javascript"></script>

	
	<!--Plugin Initialization-->
     <script type="text/javascript">
         $(document).ready(function () {
             $("#respMenu").aceResponsiveMenu({
                 resizeWidth: '768', // Set the same in Media query
                 animationSpeed: 'fast', //slow, medium, fast
                 accoridonExpAll: false //Expands all the accordion menu on click
             });
         });
	</script>


<!--scroll -->
<script>
jQuery(document).ready(function($) {
        $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
        });
});
</script>



	<script src="js/scrolla.jquery.min.js"></script>

	<script>

	$('.animate').scrolla({
		mobile: false,
		once: false
	});

	$('#button-show-window').click(function() {
		var template = $('#modal-template').html();
		$('body').append(template);
		$('.animate').scrolla('bind');
		$('section.modal .modal-close').click(function() {
			$(this).closest('section.modal').remove();
		});

		return false;
	});

	</script>

<!--동영상 이거만 넣음됨-->

<script src="js/ultimate-bg.js"></script>
<script>
jQuery('.section1').c47bg({
  type: 'youtube',
  container: 'div',
  source: '8DQxMMrrX0c',
  crop:false
});
</script>

<!--동영상 이거만 넣음됨-->
</body>
</html>