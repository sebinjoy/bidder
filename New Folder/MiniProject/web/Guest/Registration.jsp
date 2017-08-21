<%-- 
    Document   : regjsp
    Created on : Aug 5, 2017, 2:13:19 PM
    Author     : student36
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.dbConnection" id="obj"></jsp:useBean>
<!DOCTYPE html>
<%
    if(request.getParameter("submit")!=null)
    {
        String name=request.getParameter("txt_name");
        String address=request.getParameter("txt_address");
        String gender=request.getParameter("gender");
        String qualification=request.getParameter("sel");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        String repassword=request.getParameter("repassword");
        
        String str="insert into tbl_form(name,address,gender,qualification,email,password,repassword)values('"+name+"','"+address+"','"+gender+"','"+qualification+"','"+email+"','"+password+"','"+repassword+"')";
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
<tr><td>NAME:</td><td><input type="text"  name="txt_name"></td></tr>
<tr><td>ADDRESS:</td><td><textarea name="txt_address"></textarea></td></tr>
<tr><td>GENDER :</td><td>
MALE<input type="radio" name="gender" value="male">
FEMALE<input type="radio" name="gender"value="female">
<tr><td>QUALIFICATION: </td>
    <td><select name="sel">
<option>MCA</option>
<option>MBA</option>
<option>BSC</option>
<option>BCA</option>
    </select>
<tr><td>EMAIL:<td><input type="text" name="email"</td></tr>
<tr><td>PASSWORD:<td><input type="password" name="password" id="pass1"></td></tr>
<tr><td>RE-ENTER PASSWORD:<td><input type="password" name="repassword" id ="pass2"></td></tr>
<tr><td><input type="submit" name="submit" onclick="return check()"></td>
    <td><input type="reset" name="reset"></td></tr>

</table>
</form>
    </body>
</html>
