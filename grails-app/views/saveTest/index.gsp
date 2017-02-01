<%--
  Created by IntelliJ IDEA.
  User: gsuhm
  Date: 2/1/17
  Time: 3:08 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:link controller="saveTest" action="add">Add New</g:link>
<g:each in="${test}" var="t">

   <p> <g:link controller="saveTest" action="add" id="${t.id}">${t.a}</g:link>
    <g:link controller="saveTest" action="delete" id="${t.id}">Delete</g:link></p>
</g:each>
</body>
</html>