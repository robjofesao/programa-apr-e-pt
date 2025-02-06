<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>excluir PET</title>
    </head>
    <body>
        <%
            try {
                int cod = Integer.parseInt(request.getParameter("pet-excluir"));
               
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/parbd", "root", "");
                PreparedStatement ps = connection.prepareStatement("DELETE FROM parbd.pet_reg WHERE id=?");
                ps.setInt(1, cod);
                ps.execute();
               
                ps.close();
                connection.close();
                out.print("Registro Excluido com Sucesso!");
               
            } catch (Exception e) {
                out.print("deu Erro...." + e);
            }
           
        %>
    </body>
</html>
