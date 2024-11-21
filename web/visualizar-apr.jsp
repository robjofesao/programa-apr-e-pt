
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="w3.css" />
        <title>Visualizar Apr</title>
    </head>
    <body>
        <!-- criar campo para listar as apr no sistema -->
        <div class="w3-container">
            <form action="imprimir-apr.jsp" method="post" target="_blank">
                <h4 class="w3-bar w3-light-blue w3-padding-16 w3-container">Comece escolhendo o número da APR a ser buscada:</h4>
                <select class="w3-select w3-border w3-round-large w3-bar w3-padding-16" name="apr-buscada">
                    <%
                        //buscar as Aprs preenchidas

                        try {
                            //fazer conexÃ£o com o banco de dados Connection connection;
                            PreparedStatement ps;
                            Connection connection;
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            connection = DriverManager.getConnection("jdbc:mysql://localhost:3305/parbd", "root",
                                    "");
                            ps = connection.prepareStatement("SELECT cod_apr, descricao_atividade_apr, data_abertura_apr FROM parbd.Apr_reg; ");
                            ResultSet rs = ps.executeQuery();

                            while (rs.next()) {

                    %>
                    <option value="<%= rs.getString("cod_apr")%>">APR nº: <%= rs.getString("cod_apr")%> - <%= rs.getString("descricao_atividade_apr")%> </option>
                    <%

                            }

                            connection.close();
                        } catch (Exception e) {
                            out.print("erro: " + e);
                        }

                    %>
                </select>

                <button class="w3-button w3-round-xlarge w3-margin w3-blue" style="align-items: center">Consultar APR</button>
            </form>




        </div>






    </body>
</html>
