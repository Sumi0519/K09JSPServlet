<%@page import="java.util.Set"%>
<%@page import="common.Person"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>application 영역의 속성 읽기</title>
</head>
<body>
	<h2>application 영역의 속성 읽기</h2>
	<%
	Map<String, Person> maps = (Map<String, Person>)application.getAttribute("maps");
	/*
	Map컬렉션은 key를 통해 value를 저장하므로 반복적에 key를 먼저 얻어와야한다.
	keySet()을 통해 얻어온 key를 목록을 통해 반복하고, get()을 통해 value를 출력한다.
	*/
	Set<String> keys = maps.keySet();
	for(String key : keys){
		Person person = maps.get(key);
		out.print(String.format("이름 : %s, 나이 : %d<br/>",
				person.getName(),person.getAge()));
	}
	/*
	(키에 대한 인덱스 값이 아닌 그냥 키값이 들어있기 때문에 그 키값을 반복하면서 꺼내와야 한다.)
	*/
	%>
</body>
</html>