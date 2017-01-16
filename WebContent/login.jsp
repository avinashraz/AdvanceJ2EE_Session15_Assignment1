<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="com.login.classes.message" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="${language}">
    <head>
        <title>Login</title>
    </head>
    <body>
        <form>
            <select id="language" name="language" onchange="submit()">
                <option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
                <option value="fr" ${language == 'fr' ? 'selected' : ''}>French</option>
            </select>
        </form>
        <br>
        <form method="post">
            <label for="firstname"><fmt:message key="login.label.firstname" />:</label>
            <input type="text" id="firstname" name="firstname">
            <br>
            <br>
            <label for="lastname"><fmt:message key="login.label.lastname" />:</label>
            <input type="text" id="lastname" name="lastname">
            <br>
            <br>
            <fmt:message key="login.button.submit" var="buttonValue" />
            <input type="submit" name="submit" value="${buttonValue}">
        </form>
    </body>
</html>

