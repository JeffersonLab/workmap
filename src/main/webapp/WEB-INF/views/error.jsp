<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="${initParam.notification ne null ? 'special-notification' : ''}">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ATLis Work Map - Error: <c:out value="${message}"/></title>
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/v${initParam.releaseNumber}/img/favicon.ico"/>
        <link type="text/css" rel="stylesheet" href="${cdnContextPath}/jquery-ui/1.10.3/theme/atlis/jquery-ui.min.css"/>
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/v${initParam.releaseNumber}/css/workmap.css"/>
    </head>
    <body>
        <c:if test="${initParam.notification ne null}">
            <div id="notification-bar"><c:out value="${initParam.notification}"/></div>
        </c:if>        
        <div id="header">
            <div id="left-header">
                <%@include file="../fragments/logo.jspf"%>    
                <%@include file="../fragments/auth.jspf"%>                
            </div>            
            <div id="center-header">
                <h2>Error</h2>                
                <%@include file="../fragments/nav.jspf"%>
            </div>
            <div id="right-header">           
            </div>
        </div>
        <div id="content">
            <h3 id="error-message-box"><c:out value="${message}"/></h3>      
        </div>                
        <script type="text/javascript" src="${cdnContextPath}/jquery/1.10.2.min.js"></script>
        <script type="text/javascript" src="${cdnContextPath}/jquery-ui/1.10.3/jquery-ui.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/v${initParam.releaseNumber}/js/workmap.js"></script>
        <%@include file="../fragments/nav-dialogs.jspf"%>        
    </body>
</html>
