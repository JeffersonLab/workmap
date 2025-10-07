<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html class="${initParam.notification ne null ? 'special-notification' : ''}">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ATLis Work Map - Error: <c:out value="${message}"/></title>
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/v${initParam.releaseNumber}/img/favicon.ico"/>
        <c:choose>
            <c:when test="${'CDN' eq resourceLocation}">
                <link type="text/css" rel="stylesheet" href="${cdnContextPath}/jquery-ui/1.13.2/theme/atlis/jquery-ui.min.css"/>
            </c:when>
            <c:otherwise><!-- LOCAL -->
                <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/jquery-ui/1.13.2/theme/atlis/jquery-ui.min.css"/>
            </c:otherwise>
        </c:choose>
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
        <c:choose>
            <c:when test="${'CDN' eq resourceLocation}">
                <script type="text/javascript" src="${cdnContextPath}/jquery/3.6.1.min.js"></script>
                <script type="text/javascript" src="${cdnContextPath}/jquery-ui/1.13.2/jquery-ui.min.js"></script>
            </c:when>
            <c:otherwise><!-- LOCAL -->
                <script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery/3.6.1.min.js"></script>
                <script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery-ui/1.13.2/jquery-ui.min.js"></script>
            </c:otherwise>
        </c:choose>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/v${initParam.releaseNumber}/js/workmap.js"></script>
        <%@include file="../fragments/nav-dialogs.jspf"%>        
    </body>
</html>
