<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String msg = request.getParameter("msg");
    pageContext.setAttribute("msg", msg);
    System.out.println(msg);
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@ taglib prefix="fns" uri="/WEB-INF/taglibs/fns.tld" %>--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setBundle basename="application" var="applicationInfo"/>
<fmt:message key="page.title" var="title_3" bundle="${applicationInfo}"/>

