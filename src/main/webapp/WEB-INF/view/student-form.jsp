<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>

    <title>Student registration form</title>
    <style>
        .error {color:red}
    </style>
</head>
<body>
<form:form action="processForm" modelAttribute="student">
    First name: <form:input path="firstName"/>

    <br>
    Last name: <form:input path="lastName"/>
    <form:errors path="lastName" cssClass="error"/>
    <br>
    Age: <form:input path="age"/>
    <form:errors path="age" cssClass="error"/>

    <br><br>
    Country:
    <form:select path="country">
        <form:options items="${student.countries}"/>
    </form:select>

    <br><br>
    Fav color:
    <br>
    Red <form:radiobutton path="color" value="blood"/><br>
    Green <form:radiobutton path="color" value="trees"/><br>
    Blue <form:radiobutton path="color" value="sky"/><br>
    <br><br>
    Gender:
    <br>
    Male <form:checkbox path="genders" value="Rough"/> <br>
    Female <form:checkbox path="genders" value="Nice"/><br>
    Tree <form:checkbox path="genders" value="Tree"/><br>
    <br>
    <input type="submit" value="Submit"/>

</form:form>
</body>
</html>
