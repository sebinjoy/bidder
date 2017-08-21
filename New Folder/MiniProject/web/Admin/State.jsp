<%-- 
    Document   : state
    Created on : Aug 7, 2017, 11:35:16 AM
    Author     : student36
--%>
<jsp:useBean class="db.dbConnection" id="obj"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%
    String state="",id="";
     if(request.getParameter("d")!=null)
    {
        String namedelete=request.getParameter("d");
        String strdel="delete from tbl_state where state_id="+namedelete;
        obj.insert(strdel);
      
    }
    if(request.getParameter("submit1")!=null)
    {
        String statename=request.getParameter("txt_state");
        if(!request.getParameter("hid").equals(""))
        {
            String sid=request.getParameter("hid");
            String str="update tbl_state set state_name='"+statename+"' where state_id="+sid;
            obj.insert(str);
        }
        else
        {
        
        String str="insert into tbl_state(state_name)values('"+statename+"')";
        boolean b=obj.insert(str);
        if(b==true)
            out.print("success");
        else
            out.print(str);
    }
    }


%>
    
            
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
            <input type="hidden" name="hid" value="<%=id%>">
        <table align=center>
            <tr><td>STATE NAME:</td><td><input type="text"  name="txt_state" value="<%=state%>"></td></tr>
<tr><td><input type="submit" name="submit1"></td>
    <td><input type="reset" name="reset"></td></tr>
        </table>
            </form>
        
        <form>
            <table align="center">
                <tr><th>STATE</th></tr>
                    <%
                    String st="select * from tbl_state";
                    ResultSet rs=obj.select(st);
                    while(rs.next())
                    {
                    %>
                    
                <tr><td>
                    <%=rs.getString("state_name")%>
                    </td>
                <td>
                    <a href="State.jsp?d=<%=rs.getString("state_id")%>">Delete</a>
                    </td>
                    <td>
                    <a href="State.jsp?e=<%=rs.getString("state_id")%>">Edit</a>
                    </td>
                
                </tr>
                <%    
                %>
                <%

                    
                    }
                    
                    %>
            </table>
        </form>
    </body>
</html>
