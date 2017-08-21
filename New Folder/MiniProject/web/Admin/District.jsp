<%-- 
    Document   : district
    Created on : Aug 7, 2017, 12:13:49 PM
    Author     : student36
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.dbConnection" id="obj"></jsp:useBean>
<!DOCTYPE html>
<%
    if(request.getParameter("submit1")!=null)
    {
        String districtname=request.getParameter("txt_district");
        String stateid=request.getParameter("sel");
        String str="insert into tbl_district(district_name,state_id)values('"+districtname+"','"+stateid+"')";
        boolean b=obj.insert(str);
        if(b==true)
            out.print("success");
        else
            out.print(str);
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
    </head>
    <body>
        <form>
        <table align=center>
            <tr><td><select name="sel">
                        <option value="select">
                        select
                        </option>
                        <%
                        
                        String sel="select * from tbl_state";
                        ResultSet rs=obj.select(sel);
                        while(rs.next())
                        {%>
                        <option value="<%=rs.getString("state_id")%>"> <%=rs.getString("state_name")%></option>
                       <% }
                        
                        
                        
                        
                        %>
                        
                        
                    </select></tr></td>
<tr><td>DISTRICT NAME:</td><td><input type="text"  name="txt_district"></td></tr>
<tr><td><input type="submit" name="submit1"></td>
    <td><input type="reset" name="reset"></td></tr>
        </table>
            </form>
    </body>
</html>
