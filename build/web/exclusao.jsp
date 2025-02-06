
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="w3.css" />
        <title>Exclusão de Documentos</title>
    </head>
    <body>
        <!-- criar campo para listar as apr no sistema -->
        <div class="w3-container">
            <form action="excluir-apr.jsp" method="get">
                <h4 class="w3-bar w3-blue w3-padding-16 w3-container">Escolha uma APR para ser excluida</h4>
                <select class="w3-select w3-border w3-round-large w3-bar w3-padding-16" name="apr-excluir">
                    <%
                        //buscar as Aprs preenchidas

                        try {
                            //fazer conexÃ£o com o banco de dados Connection connection;
                            PreparedStatement ps;
                            Connection connection;
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/parbd", "root",
                                    "");
                            ps = connection.prepareStatement("SELECT * FROM parbd.Apr_reg; ");
                            ResultSet rs = ps.executeQuery();

                            while (rs.next()) {
                            DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyyy");
                            LocalDate data = LocalDate.parse(rs.getString("data_abertura_apr"));
                             


                    %>
                    <option value="<%= rs.getString("cod_apr") %>">#: <%= rs.getString("cod_apr") %> - <%= rs.getString("descricao_atividade_apr") %> - <%= formato.format(data)  %> </option>
                    <%

                            }
                            ps.close();
                            connection.close();
                        } catch (Exception e) {
                            out.print("erro: " + e);
                        }

                    %>
                </select>

                <button class="w3-button w3-round-xlarge w3-margin w3-blue" style="align-items: center">EXCLUIR APR</button>
            </form>

        </div>
                
                <!-- criar campo para listar as pt no sistema -->
        <div class="w3-container">
            <form action="excluir-pt.jsp" method="get">
                <h4 class="w3-bar w3-green w3-padding-16 w3-container">Escolha uma PT para ser Excluida</h4>
                <select class="w3-select w3-border w3-round-large w3-bar w3-padding-16" name="pt-excluir">
                    <%
                        //buscar as pt preenchidas

                        try {
                            //fazer conexÃ£o com o banco de dados Connection connection;
                            PreparedStatement ps;
                            Connection connection;
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/parbd", "root",
                                    "");
                            ps = connection.prepareStatement("select id, pt_desc_servico, data_abertura_pt from parbd.pt_reg;");
                            ResultSet rs = ps.executeQuery();

                            while (rs.next()) {
                            DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyyy");
                            LocalDate data = LocalDate.parse(rs.getString("data_abertura_pt"));

                    %>
                    <option value="<%= rs.getString("id") %>">#: <%= rs.getString("id") %> - <%= rs.getString("pt_desc_servico") %> - <%= formato.format(data) %> </option>
                    <%

                            }
                            ps.close();
                            connection.close();
                        } catch (Exception e) {
                            out.print("erro: " + e);
                        }

                    %>
                </select>

                <button class="w3-button w3-round-xlarge w3-margin w3-green" style="align-items: center">EXCLUIR PT</button>
            </form>

        </div>
                
                        <!-- criar campo para listar as pet no sistema -->
        <div class="w3-container">

            <form action="excluir-pet.jsp" method="get">
                <h4 class="w3-bar w3-yellow w3-padding-16 w3-container">Escolha a PET a ser Excluida</h4>
                <select class="w3-select w3-border w3-round-large w3-bar w3-padding-16" name="pet-excluir">
                    <%
                        //buscar as pet preenchidas

                        try {
                            //fazer conexÃ£o com o banco de dados Connection connection;
                            PreparedStatement ps;
                            Connection connection;
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/parbd", "root",
                                    "");
                            ps = connection.prepareStatement("select id, desc_det_serv, data_abertura from parbd.pet_reg;");
                            ResultSet rs = ps.executeQuery();

                            while (rs.next()) {
                            DateTimeFormatter formato = DateTimeFormatter.ofPattern("dd/MM/yyyy");
                            LocalDate data = LocalDate.parse(rs.getString("data_abertura"));

                    %>
                    <option value="<%= rs.getString("id") %>">#: <%= rs.getString("id") %> - <%= rs.getString("desc_det_serv") %> - <%= formato.format(data) %></option>
                    <%

                            }
                            ps.close();
                            connection.close();
                        } catch (Exception e) {
                            out.print("erro: " + e);
                        }

                    %>
                </select>

                <button class="w3-button w3-round-xlarge w3-margin w3-yellow" style="align-items: center">EXLUIR PET</button>
               
            </form>
               
                
                
           
               
        </div>






    </body>
</html>
