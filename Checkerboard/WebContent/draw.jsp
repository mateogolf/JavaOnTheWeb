<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Checkerboard</title>
	<!-- bootstrapcdn -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="draw_style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-12">
        <!-- getting the value for the name parameter -->
        <% 
        	String widthStr = request.getParameter("width");
       		String heightStr = request.getParameter("height");
       		int width = 0;
       		int height = 0;
        	boolean parsed = false;
       		try{
       			width = Integer.parseInt(widthStr);
       			height = Integer.parseInt(heightStr);
       			parsed = true;
			}
            catch(ClassCastException e){
                System.out.println("ERROR when casting.");
            }
        	if(parsed){
        %>

	        <h1> Checkerboard: <%= width %>w x <%= height %>h </h1>
	
	        <% for(int index = 0; index < height; index++) { %>
	            <div class="row">
	                <% for(int j = 0; j < width; j++) { %>
	                    <% if(index == 0 || index%2==0){ %> <!-- start with purple class div -->
	                        <% if(j == 0 || j%2==0){ %>
	                            <div class="purple"></div>
	                        <% } else{ %>
	                            <div class="blue"></div>
	                        <% } %>
	                    <% } else{ %><!-- start with purple class div -->
	                        <% if(j == 0 || j%2==0){ %>
	                            <div class="blue"></div>
	                        <% } else{ %>
	                            <div class="purple"></div>
	                        <% } %>
	                    <% } %>
					<% } %>
	            </div>
	        <% } %>
        <% } %>
    
    </div>
</body>
</html>