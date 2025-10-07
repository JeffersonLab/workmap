<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<%@taglib prefix="f" uri="jakarta.tags.fmt"%>
<%@taglib prefix="fn" uri="jakarta.tags.functions"%>
<f:formatDate value="${yearMonthDay}" pattern="EE MMMM d yyyy" var="yearMonthDayVerboseStr"/>
<f:formatDate value="${yearMonthDay}" pattern="yyyy-MM-dd" var="yearMonthDayConciseStr"/>
<f:formatDate value="${lastModified}" pattern="yyyy-MM-dd HH:mm" var="lastModifiedStr"/>
<c:url context="${pageContext.request.contextPath eq '' ? '/' : pageContext.request.contextPath}" value="/${previousURL}" var="domainRelativePrevURL"/>
<c:url context="${pageContext.request.contextPath eq '' ? '/' : pageContext.request.contextPath}" value="/${nextURL}" var="domainRelativeNextURL"/>
<c:url context="${pageContext.request.contextPath eq '' ? '/' : pageContext.request.contextPath}" value="/edit-work-map?yearMonthDay=${yearMonthDayConciseStr}" var="domainRelativeEditURL"/>
<c:url value="/?yearMonthDay=${yearMonthDayConciseStr}" var="viewURL"/>
<c:url value="convert" var="pdfURL">
    <c:param name="type" value="pdf"/>
    <c:param name="url" value="${viewURL}"/>
    <c:param name="filename" value="workmap.pdf"/>
</c:url>
<c:set var="resourceLocation" value="${env['RESOURCE_LOCATION']}"/>
<!DOCTYPE html>
<html class="${initParam.notification ne null ? 'special-notification' : ''}">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ATLis Work Map - <c:out value="${yearMonthDayVerboseStr}"/></title>
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
        <style>
            .ui-state-hover > .ui-button-text > .ui-icon {
                background-image: url("${cdnContextPath}/jquery-ui/1.10.3/theme/atlis/images/ui-icons_ffff00_256x240.png") !important;
            }
        </style>
    </head>
    <body${editable ? ' class="editable"' : ''}>
        <c:if test="${initParam.notification ne null}">
            <div id="notification-bar"><c:out value="${initParam.notification}"/></div>
        </c:if>            
        <div id="header">
            <div id="left-header">
                <%@include file="../fragments/logo.jspf"%>
                <%@include file="../fragments/auth.jspf"%>
            </div>
            <div id="center-header">
                <h2><button class="styled-button time-scroll-button" title="Previous Day" onclick="window.location.href = '${fn:escapeXml(domainRelativePrevURL)}'"><span class="ui-icon ui-icon-seek-prev"></span></button> <a id="pageLink" href="${fn:escapeXml(absViewURL)}"><c:out value="${yearMonthDayVerboseStr}"/></a> <button class="styled-button time-scroll-button" title="Next Day" onclick="window.location.href = '${fn:escapeXml(domainRelativeNextURL)}'"><span class="ui-icon ui-icon-seek-next"></span></button></h2>
                        <%@include file="../fragments/nav.jspf"%>
            </div>
            <div id="right-header">
                <div id="key">
                    <span class="legend">Key <a href="#" id="key1link" class="selected-key">1</a> <a href="#" id="key2link">2</a></span>
                    <table id="key1">
                        <tbody>
                            <tr>
                                <td>
                                    <span class="area">
                                        <span class="symbol keepout"></span>
                                        <span class="text">Keep Out</span>
                                    </span>                                    
                                </td>
                                <td>
                                    <span class="area">
                                        <span class="symbol penetration"></span>
                                        <span class="text">Penetration</span>
                                    </span>                                    
                                </td>
                                <td>
                                    <span class="area">
                                        <span class="symbol radiation"></span>
                                        <span class="text">Radiation</span>
                                    </span>                                    
                                </td>
                                <td>
                                    <span class="area">
                                        <span class="symbol special"></span>
                                        <span class="text">ODH</span>
                                    </span> 
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="area">
                                        <span class="symbol electrical"></span>
                                        <span class="text">Electrical</span>
                                    </span>                                    
                                </td>
                                <td>
                                    <span class="area">
                                        <span class="symbol alignment"></span>
                                        <span class="text">Alignment</span>
                                    </span>                                    
                                </td>
                                <td>
                                    <span class="area">
                                        <span class="symbol vacuum"></span>
                                        <span class="text">Vacuum</span>
                                    </span>                                    
                                </td>
                                <td>
                                    <span class="area">
                                        <span class="symbol general"></span>
                                        <span class="text">General</span>
                                    </span> 
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="area">
                                        <span class="symbol material"></span>
                                        <span class="text">Material Handling</span>
                                    </span>  
                                </td>
                                <td>
                                    <span class="area">
                                        <span class="symbol outage"></span>
                                        <span class="text">Outage</span>
                                    </span>
                                </td>
                                <td>
                                    <span class="area">
                                        <span class="symbol covid"></span>
                                        <span class="text">COVID <6'</span>
                                    </span>
                                </td>
                                <td id="upstairs-work-td">
                                    <span class="area area-is-upstairs">
                                        <span class="text-background">Upstairs Work</span>
                                    </span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table id="key2" style="display: none;">
                        <tbody>
                            <tr>
                                <td>
                                    <span class="pss-area inj-pss">
                                        <span class="line power-permit"></span>
                                    </span>
                                </td>
                                <td>
                                    <span class="">Power Permit</span>
                                </td>
                                <td>
                                  <span class="pss-area inj-pss">
                                     <span class="line beam-permit"></span>
                                  </span>
                                </td>
                                <td>
                                    <span class="">Beam Permit</span>
                                </td>
                                 <td>
                                    <span class="pss-area inj-pss">
                                        <span class="line controlled-access"></span>
                                    </span>
                                </td>
                                <td>
                                    <span class="">Controlled Access</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                 <span class="pss-area inj-pss">
                                     <span class="line lock-power-permit"></span>
                                 </span>
                                </td>
                                <td>
                                    <span class="">Partial Day Power Permit</span>
                                </td>
                                <td>
                                 <span class="pss-area inj-pss">
                                     <span class="line lock-beam-permit"></span>
                                    </span>
                                </td>
                                <td>
                                    <span class="">Partial Day Beam Permit</span>
                                </td>
                                <td>
                                    <span class="pss-area inj-pss">
                                        <span class="line lock-controlled-access"></span>
                                    </span>
                                </td>
                                <td>
                                    <span class="">Partial Day Controlled Access</span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div id="content">
            <form method="post" action="${pageContext.request.contextPath}/edit-work-map">
                <c:if test="${pageContext.request.isUserInRole('workmap-admin')}">
                    <div id="topActionPanel">
                        <c:choose>
                            <c:when test="${editable}">                              
                                <input type="submit" class="styled-button save-button" value="Save"/>
                            </c:when>
                            <c:otherwise>
                                <a class="styled-button edit-mode-button" href="${fn:escapeXml(domainRelativeEditURL)}">Edit Mode</a>
                                <hr/>                                   
                                <a id="copyOpener" class="styled-button" title="Select a work map to copy">Copy...</a>                         
                            </c:otherwise>
                        </c:choose>
                    </div>
                </c:if>               
                <div id="map-border">
                    <div id="workmap-container">
                        <c:forEach var="area" items="${taskAreas}">
                            <c:if test="${editable or not empty taskMap[area.areaName]}">
                                <span class="area ${area.areaName} ${taskMap[area.areaName].upstairs ? 'area-is-upstairs' : 'area-is-downstairs'}" data-area-name="${area.areaName}">
                                    <c:choose>
                                        <c:when test="${editable}">
                                            <c:choose>
                                                <c:when test="${taskMap[area.areaName].workMapTaskTypeId ne null}">
                                                    <span class="edit-task-attribute-button symbol ${taskMap[area.areaName].workMapTaskTypeId.cssClassName}"></span>
                                                </c:when>
                                                <c:otherwise>
                                                    <span class="edit-task-attribute-button no-symbol"></span>
                                                </c:otherwise>
                                            </c:choose>
                                            <input type="hidden" class="area-symbol" name="${area.areaName}-symbol" value="${taskMap[area.areaName].workMapTaskTypeId.typeName}"/>
                                            <input type="hidden" class="area-upstairs" name="${area.areaName}-upstairs" value="${taskMap[area.areaName].upstairs ? 'Y' : 'N'}"/>
                                            <c:if test="${not area.iconOnly}">
                                                <span class="text"><input name="${area.areaName}-text" type="text" class="text-input" size="16" maxlength="32" value="${fn:escapeXml(taskMap[area.areaName].message)}"/></span>
                                            </c:if>
                                        </c:when>
                                        <c:otherwise>
                                            <c:if test="${taskMap[area.areaName].workMapTaskTypeId ne null}">
                                                <span class="symbol ${taskMap[area.areaName].workMapTaskTypeId.cssClassName}"></span>
                                            </c:if>
                                            <c:if test="${not area.iconOnly}">
                                                <span class="text"><span class="text-background"><c:out value="${taskMap[area.areaName].message}"/></span></span>
                                            </c:if>
                                        </c:otherwise>
                                    </c:choose>
                                </span>
                            </c:if>
                        </c:forEach>
                        <c:forEach var="area" items="${pssAreas}">
                            <c:choose>
                                <c:when test="${editable}">
                                    <span class="editable-pss-area editable-${area.areaName}">
                                        <span>
                                            <select name="${area.areaName}-line" class="line-select">
                                                <option value="" class=""> </option>
                                                <c:forEach var="state" items="${pssStates}">
                                                    <option value="${fn:escapeXml(state.stateName)}" ${pssMap[area.areaName].workMapPssStateId.stateName eq state.stateName ? 'selected="selected"' : ''}><c:out value="${state.stateName}"/></option>
                                                </c:forEach>
                                            </select>
                                        </span>
                                    </span>
                                </c:when>
                                <c:otherwise>
                                    <c:if test="${not empty pssMap[area.areaName]}">
                                        <span class="pss-area ${area.areaName}">
                                            <span class="line ${pssMap[area.areaName].workMapPssStateId.cssClassName}"></span>
                                        </span>
                                    </c:if>
                                </c:otherwise>
                            </c:choose>                            
                        </c:forEach>
                        <img alt="Accelerator" width="1200" height="890" src="${pageContext.request.contextPath}/resources/v${initParam.releaseNumber}/img/accelerator.png"/>
                        <span id="note">
                            <c:choose>
                                <c:when test="${editable}">
                                    <textarea id="note" name="note" maxlength="256"><c:out value="${note}"/></textarea>
                                </c:when>
                                <c:otherwise>
                                    <span id="note-view"><c:out value="${note}"/></span>
                                </c:otherwise>
                            </c:choose>   
                        </span>
                    </div>
                </div>
                <div id="content-footer">
                    <span id="modified-date">Last Modified: <c:out value="${lastModifiedStr}"/></span>
                    <c:if test="${!publicProxy}">
                        <a id="pdf-button" class="styled-button" href="${fn:escapeXml(pdfURL)}">PDF</a>
                    </c:if>
                </div>
                <input type="hidden" name="yearMonthDay" value="${yearMonthDayConciseStr}"/>    
            </form>
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
        <script type="text/javascript">
            var jlab = jlab || {};
            jlab.keycloakServer = '${env["KEYCLOAK_SERVER_FRONTEND"]}';
            <c:url var="iframeLoginUrl" value="https://${env['KEYCLOAK_SERVER_FRONTEND']}/auth/realms/${env['KEYCLOAK_REALM']}/protocol/openid-connect/auth">
            <c:param name="client_id" value="account"/>
            <c:param name="kc_idp_hint" value="${env['KEYCLOAK_HEADLESS_IDP']}"/>
            <c:param name="response_type" value="code"/>
            <c:param name="redirect_uri" value="https://${env['KEYCLOAK_SERVER_FRONTEND']}/auth/realms/${env['KEYCLOAK_REALM']}/account/"/>
            </c:url>
            jlab.iframeLoginUrl = '${empty env['KEYCLOAK_HEADLESS_IDP'] ? '' : iframeLoginUrl}';
            <c:url var="suLogoutUrl" value="https://${env['KEYCLOAK_SERVER_FRONTEND']}/auth/realms/${env['KEYCLOAK_REALM']}/protocol/openid-connect/logout">
            <c:param name="redirect_uri" value="https://${env['KEYCLOAK_SERVER_FRONTEND']}/auth/realms/${env['KEYCLOAK_REALM']}/account/"/>
            </c:url>
            jlab.suLogoutUrl = '${suLogoutUrl}';
        </script>
        <%@include file="../fragments/nav-dialogs.jspf"%>
        <%@include file="../fragments/map-dialogs.jspf"%>
    </body>    
</html>
