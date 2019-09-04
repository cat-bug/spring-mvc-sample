<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<html>
<title>Student confirmation</title>
<body>
Student is confirmed: ${student.firstName} ${student.lastName}, ${student.age} years old
<br>
Country: ${student.country}
<br>
Favorite color: ${student.color}
<br>
Gender(s):
<br>
<ul>
    <c:forEach var="temp" items="${student.genders}">
    <li>${temp}</li>
    </c:forEach>
</ul>

</body>
</html>
