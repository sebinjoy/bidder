<%-- 
    Document   : place
    Created on : Aug 12, 2017, 10:50:36 AM
    Author     : student36
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.dbConnection" id="obj"></jsp:useBean>
<!DOCTYPE html>
<%
    if(request.getParameter("submit1")!=null)
    {
        String placename=request.getParameter("txt_place");
        String stateid=request.getParameter("sel");
        String districtid=request.getParameter("dis");
        String str="insert into tbl_place(state_id,district_id,place_name)values('"+stateid+"','"+districtid+"','"+placename+"')";
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
        <title>Place</title>
        <script src="jquery.min.js" type="text/javascript"></script>
         <script>
            function getDist(v)
            {
                
              //  alert(v);
                $.ajax({url: "ajax_dist.jsp?id="+v, success: function(result){
        $("#dis").html(result);
    }})
            }
            </script>
            
    </head>
    <body>
        <form>
            <table>
                <tr><td>STATE:</td> <td><select name="sel" onchange="getDist(this.value)">
                <option value=""select">
                        --select--
                        </option>
                    <%
                        String sel="select * from tbl_state";
                        ResultSet rs=obj.select(sel);
                        while (rs.next())
                        {
                            %>
                            <option value="<%=rs.getString("state_id")%>"> <%=rs.getString("state_name")%></option>"
                            <%
                            }
                        %>
                        
                                   </select></tr></td>
            <tr><td>DISTRICT:</td><td><select name="dis" id="dis">
                        <option value="select">
                            --select--
                        </option>
                        
<tr><td>PLACE NAME:</td><td><input type="text"  name="txt_place"></td></tr>
<tr><td><input type="submit" name="submit1"></td>
    <td><input type="reset" name="reset"></td></tr>
        </table>
        <h1></h1>
    </body>
</html>
