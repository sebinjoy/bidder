<%-- 
    Document   : ajax_dist
    Created on : Aug 12, 2017, 12:01:01 PM
    Author     : student36
--%>

<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="db.dbConnection" id="obj"></jsp:useBean>
<%
    String sid=request.getParameter("id");
    String sel="select * from tbl_district where state_id="+sid;
    ResultSet rs=obj.select(sel);
    while(rs.next())
    {
        %>
        <option value="<%=rs.getString("district_id")%>"> <%=rs.getString("district_name")%></option>
        <%
            }
%>
%>