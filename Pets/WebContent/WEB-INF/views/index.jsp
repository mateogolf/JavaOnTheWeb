<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1><%= session.getAttribute("name") %></h1>
    <fieldset>
        <legend>Dog</legend>
        <form action="dog" method="get">
            <input type="text" name="name" placeholder="name">
            <input type="text" name="breed" placeholder="breed">
            <input type="text" name="weight" placeholder="weight">
            <input type="submit" value="New Dog">
        </form>
    </fieldset>
    <fieldset>
        <legend>Cat</legend>
        <form action="cat" method="get">
            <input type="text" name="name" placeholder="name">
            <input type="text" name="breed" placeholder="breed">
            <input type="text" name="weight" placeholder="weight">
            <input type="submit" value="New Cat">
        </form>
    </fieldset>
</body>
</html>