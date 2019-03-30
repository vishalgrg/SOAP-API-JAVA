<%@page import="com.death.stalker.beans.Person"%>
<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="samplePersonServiceImplProxyid" scope="session" class="com.death.stalker.service.PersonServiceImplProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
samplePersonServiceImplProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = samplePersonServiceImplProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        samplePersonServiceImplProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        com.death.stalker.service.PersonServiceImpl getPersonServiceImpl10mtemp = samplePersonServiceImplProxyid.getPersonServiceImpl();
if(getPersonServiceImpl10mtemp == null){
%>
<%=getPersonServiceImpl10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 15:
        gotMethod = true;
        String id_1id=  request.getParameter("id24");
        int id_1idTemp  = Integer.parseInt(id_1id);
        com.death.stalker.beans.Person getPerson15mtemp = samplePersonServiceImplProxyid.getPerson(id_1idTemp);
if(getPerson15mtemp == null){
%>
<%=getPerson15mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">age:</TD>
<TD>
<%
if(getPerson15mtemp != null){
%>
<%=getPerson15mtemp.getAge()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">name:</TD>
<TD>
<%
if(getPerson15mtemp != null){
java.lang.String typename20 = getPerson15mtemp.getName();
        String tempResultname20 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typename20));
        %>
        <%= tempResultname20 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getPerson15mtemp != null){
%>
<%=getPerson15mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 26:
        gotMethod = true;
        String age_3id=  request.getParameter("age31");
        int age_3idTemp  = Integer.parseInt(age_3id);
        String name_4id=  request.getParameter("name33");
            java.lang.String name_4idTemp = null;
        if(!name_4id.equals("")){
         name_4idTemp  = name_4id;
        }
        String id_5id=  request.getParameter("id35");
        int id_5idTemp  = Integer.parseInt(id_5id);
        %>
        <jsp:useBean id="com1death1stalker1beans1Person_2id" scope="session" class="com.death.stalker.beans.Person" />
        <%
        com1death1stalker1beans1Person_2id.setAge(age_3idTemp);
        com1death1stalker1beans1Person_2id.setName(name_4idTemp);
        com1death1stalker1beans1Person_2id.setId(id_5idTemp);
        boolean addPerson26mtemp = samplePersonServiceImplProxyid.addPerson(com1death1stalker1beans1Person_2id);
        String tempResultreturnp27 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addPerson26mtemp));
        %>
        <%= tempResultreturnp27 %>
        <%
break;
case 37:
        gotMethod = true;
        String id_6id=  request.getParameter("id40");
        int id_6idTemp  = Integer.parseInt(id_6id);
        boolean deletePerson37mtemp = samplePersonServiceImplProxyid.deletePerson(id_6idTemp);
        String tempResultreturnp38 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deletePerson37mtemp));
        %>
        <%= tempResultreturnp38 %>
        <%
break;
case 42:
        gotMethod = true;
        com.death.stalker.beans.Person[] getAllPersons42mtemp = samplePersonServiceImplProxyid.getAllPersons();
if(getAllPersons42mtemp == null){
%>
<%=getAllPersons42mtemp %>
<%
}else{
        String tempreturnp43 = null;
        if(getAllPersons42mtemp != null){
        java.util.List listreturnp43= java.util.Arrays.asList(getAllPersons42mtemp);
        tempreturnp43 = listreturnp43.toString();
        
        }
        
        %>
        <%=tempreturnp43%>
        <%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>