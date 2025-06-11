<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Employee</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet"/>
</head>
<body class="updatepage-bg">

<div class="container mt-5">
    <div class="form-container">
        <h2 class="mb-4">Update Employee</h2>

        <form:form action="/saveEmployee" method="post" modelAttribute="employee">

            <form:hidden path="id"/>

            <div class="form-group">
                <label>Name</label>
                <form:input path="name" cssClass="form-control"/>
                <form:errors path="name" cssClass="text-danger"/>
            </div>

            <div class="form-group">
                <label>Email</label>
                <form:input path="email" cssClass="form-control"/>
                <form:errors path="email" cssClass="text-danger"/>
            </div>

            <div class="form-group">
                <label>Department</label>
                <form:input path="department" cssClass="form-control"/>
                <form:errors path="department" cssClass="text-danger"/>
            </div>

            <div class="form-group">
                <label>Salary</label>
                <form:input path="salary" type="number" cssClass="form-control"/>
                <form:errors path="salary" cssClass="text-danger"/>
            </div>

            <button type="submit" class="btn btn-success">Update</button>
            <a href="/" class="btn btn-secondary ml-2">Cancel</a>

        </form:form> 

    </div>
</div>

</body>
</html>
