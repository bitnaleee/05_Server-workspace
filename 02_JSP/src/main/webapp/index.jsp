<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>* JSP (Java Server Page)</h1>
	
	<p>
		JSP란, HTML내에서 자바코드를 쓸 수 있는 "자바언어"로 <br>
		Servlet(자바코드내)에서 응답화면(HTML)을 구현했던 복잡함을 보다 간단하게 해결 가능 <br>
		=> 즉, JSP의 가장 큰 장점은 Servlet에서는 요청처리(비즈니스 로직)에만 집중하고 <br>
		   응답화면을 만들어 내는건(프레젠테이션 로직) JSP에서 집중하게끔 분리할 수 있는 것 
	</p>
	
	<hr>
	
	<h2>* JSP Element 표현법</h2>
	
	<h3>1. JSP 스크립팅 원소 (Scripting Element)</h3>
	<p>JSP페이지에서 자바 코드를 기술할 수 있게 해주는 기능</p>
	
	<ol>
		<li>
			스크립틀릿 : &lt;%  자바코드  %&gt; <br>
			JSP에서 자바코드를 기술하기 위한 제일 기본적인 표현법
		</li>
		<li>
			표현식(출력식) : &lt;%=  자바코드  %&gt; <br>
			자바에서의 값(변수 또는 메소드 호출)을 화면상에 출력하기 위해 사용
		</li>
		<li>
			선언문 : &lt;%!  자바코드  %&gt; <br>
			멤버변수 또는 메소드 선언하기 위해 사용 
		</li>
	</ol>
	
	<a href="views/01_scriptingElement.jsp">View detail</a>
	
	
	<h3>
		2. 지시어 (Directive)
		&lt;%@  page|include|taglib  속성="속성값" 속성="속성값"   %&gt;
	</h3>
	<p>JSP 페이지 전체에 영향을 미치는 정보를 기술할 때 사용</p>
	
	<ol>
		<li>
			page 지시어 : 현재 jsp페이지를 처리하는데 필요한 각종 속성들을 기술 <br>
			- language : 사용할 언어 유형을 지정 <br>
			- contentType : 해당 페이지의 형식, 문자셋 지정 <br>
			- pageEncoding : jsp페이지내에 기록된 자바코드의 인코딩 방식 지정 <br>
			- import : 자바의 import와 같은 의미 <br>
			- errorPage : 해당 jsp상에 오류 발생했을 경우 보여줄 에러페이지 경로 지정 <br>
			<a href="views/02_pageDirective.jsp">View detail</a>
		</li>
		<li>
			include 지시어 : 현재 jsp상에 또 다른 jsp 포함시키고자 할 때 사용하는 지시어 <br>
			<a href="views/03_includeDirective.jsp">View detail</a>
		</li>
		<li>
			taglib 지시어 : JSP 기능을 좀 더 확장시킬 수 있는 추가적인 라이브러리를 등록하는 구문
		</li>
	</ol>
	
	<hr>
	
	<h2>피자주문페이지(jsp) --주문요청--> 주문요청을 받아서 처리해주는 Servlet --> 피자결제페이지(응답jsp) </h2>
	<a href="views/pizzaOrderForm.jsp">피자 주문 페이지</a>
	
</body>
</html>