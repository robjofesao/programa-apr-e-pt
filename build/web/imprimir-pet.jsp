<%-- Document : imprimir-pet Created on : 30 de dez. de 2024, 00:54:50 Author : robson.santos --%>
<%@page import="java.time.LocalDate" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Impressão de Permissão de Entrada e Trabalho</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    </head>
    <% try { //fazer conexÃ£o com o banco de dados Connection connection; 
            PreparedStatement ps;
            Connection connection;
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/parbd", "root", "");
            ps = connection.prepareStatement("select * from pet_reg ar where id=?;");
            ps.setString(1, request.getParameter("pet-buscada"));
            ResultSet rs = ps.executeQuery();
            while (rs.next()) { %>

    <body class="w3-container">
        <h3>PERMISSÃO DE ENTRADA E TRABALHO</h3>
        <table class="w3-table-all w3-border">
            <tbody>
                <tr>
                    <td class="w3-border">Local/Setor: <% out.print(rs.getString(2)); %>
                    </td>
                    <td class="w3-border">Equipamento/Local: <% out.print(rs.getString(3)); %>
                    </td>
                </tr>
                <tr>
                    <td class="w3-border">Data de Abertura: <% out.print(rs.getString(4)); %>
                    </td>
                    <td class="w3-border">Hora de Abertura: <% out.print(rs.getString(5)); %>
                    </td>
                </tr>


                <tr>
                    <td class="w3-border">Descrição detalhada do Serviço: <% out.print(rs.getString(6));%>
                    </td>
                    <td class="w3-border">Local do Serviço: <% out.print(rs.getString(7)); %>
                    </td>
                </tr>
            </tbody>
        </table>
        <h3>PROCEDIMENTOS</h3>
        <h3>AFERIÇÃO DA ATMOSFERA</h3>
        <table class="w3-table-all w3-border">
            <tbody>
                <tr>
                    <td>Oxigênio - O²: <% out.print(rs.getString(8));%></td>
                    <td>Gases/vapores toxicos - ppm: <% out.print(rs.getString(9));%></td>
                </tr>
                <tr>
                    <td>Inflamáveis - %LIE: <% out.print(rs.getString(10));%></td>
                    <td>Poeiras/Fumos/Névoas Toxicas: <% out.print(rs.getString(11)); %></td>
                </tr>
            </tbody>
        </table>
        <h3>VERIFICAÇÕES DE SEGURANÇA</h3>
        <table class="w3-table-all">
            <thead>
                <tr>
                    <th>Item</th>
                    <th>Resposta</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>A área foi inspecionada, isolada e sinalizada antes do inicio da tarefa:</td>
                    <td><% out.print(rs.getString(16)); %></td>
                </tr>
                <tr>
                    <td>Bloqueio, travamento e etiquetagem: </td>
                    <td><% out.print(rs.getString(17)); %></td>
                </tr>
                <tr>
                    <td>Ventilação/exaustão </td>
                    <td><% out.print(rs.getString(18)); %></td>
                </tr>
                <tr>
                    <td>Treinamento de todo os colaboradores é 
                        atual:</td>
                    <td><% out.print(rs.getString(19)); %></td>
                </tr>
                <tr>
                    <td>Equipamento de monitoramentos de gases aprovados e certificados para áreas 
                        potencialmente explosivas:</td>
                    <td><% out.print(rs.getString(19)); %></td>
                </tr>
                <tr>
                    <td>EPI’s adequados para a atividade:
                    </td>
                    <td><% out.print(rs.getString(20)); %></td>
                </tr>
                <tr>
                    <td>Cinto de segurança e linhas de vida para os 
                        trabalhadores autorizados:</td>
                    <td><% out.print(rs.getString(21)); %></td>
                </tr>
                <tr>
                    <td>Purga e/ou lavagem:</td>
                    <td><% out.print(rs.getString(22)); %></td>
                </tr>
                <tr>
                    <td>Isolamento
                    </td>
                    <td><% out.print(rs.getString(24)); %></td>
                </tr>
                <tr>
                    <td>Iluminação geral e/ou iluminação 12V:</td>
                    <td><% out.print(rs.getString(25)); %></td>
                </tr>
                <tr>
                    <td>Procedimentos de comunicação:
                    </td>
                    <td><% out.print(rs.getString(26)); %></td>
                </tr>
                <tr>
                    <td>Extintores de incêndio:
                    </td>
                    <td><% out.print(rs.getString(27)); %></td>
                </tr>
                <tr>
                    <td>Cinto de segurança e linha de vida para 
                        equipe de resgate</td>
                    <td><% out.print(rs.getString(28)); %></td>
                </tr>
                <tr>
                    <td>Equipamento de movimentação 
                        vertical/suportes externos:
                    </td>
                    <td><% out.print(rs.getString(29)); %></td>
                </tr>
            </tbody>
        </table>
        <h3>PROCEDIMENTOS QUE DEVEM SER COMPLETADOS DURANTE O DESENVOLVIMENTO DOS TRABALHOS</h3>
        <table class="w3-table-all">
            <thead>
                <tr>
                    <th>Item</th>
                    <th>Resposta</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Permissão de trabalho a quente:</td>
                    <td><% out.print(rs.getString(30)); %></td>
                </tr>
            </tbody>
        </table>
        <h3>PROCEDIMENTOS DE EMERGÊNCIA E RESGATE</h3>
        <table class="w3-table-all">
            <tbody>
                <tr>
                    <td>Euquipe de resgate:</td>
                    <td><% out.print(rs.getString(31)); %></td>
                </tr>
            </tbody>
        </table>
        <h3>COLABORADORES AUTORIZADOS</h3>
        <table class="w3-table-all">
            <thead>
                <tr>
                    <th>P.A.:</th>
                    <th>Matricula:</th>
                    <th>Nome:</th>
                </tr>
            </thead>
            <tbody>
                <%
                    if (rs.getString(32).isEmpty() && rs.getString(33).isEmpty() && rs.getString(34).isEmpty()) {
                    } else {
                        out.print("<tr>"
                                + "        <td>" + rs.getString(32) + "</td>"
                                + "        <td>" + rs.getString(33) + "</td>"
                                + "        <td>" + rs.getString(34) + "</td>"
                                + "    </tr>");
                    }
                    if (rs.getString(35).isEmpty() && rs.getString(36).isEmpty() && rs.getString(37).isEmpty()) {
                    } else {
                        out.print("<tr>"
                                + "        <td>" + rs.getString(35) + "</td>"
                                + "        <td>" + rs.getString(36) + "</td>"
                                + "        <td>" + rs.getString(37) + "</td>"
                                + "    </tr>");
                    }
                    if (rs.getString(38).isEmpty() && rs.getString(39).isEmpty() && rs.getString(40).isEmpty()) {
                    } else {
                        out.print("<tr>"
                                + "        <td>" + rs.getString(38) + "</td>"
                                + "        <td>" + rs.getString(39) + "</td>"
                                + "        <td>" + rs.getString(40) + "</td>"
                                + "    </tr>");
                    }
                    if (rs.getString(41).isEmpty() && rs.getString(42).isEmpty() && rs.getString(43).isEmpty()) {
                    } else {
                        out.print("<tr>"
                                + "        <td>" + rs.getString(41) + "</td>"
                                + "        <td>" + rs.getString(42) + "</td>"
                                + "        <td>" + rs.getString(43) + "</td>"
                                + "    </tr>");
                    }
                    if (rs.getString(44).isEmpty() && rs.getString(45).isEmpty() && rs.getString(46).isEmpty()) {
                    } else {
                        out.print("<tr>"
                                + "        <td>" + rs.getString(44) + "</td>"
                                + "        <td>" + rs.getString(45) + "</td>"
                                + "        <td>" + rs.getString(46) + "</td>"
                                + "    </tr>");
                    }
                    if (rs.getString(47).isEmpty() && rs.getString(48).isEmpty() && rs.getString(49).isEmpty()) {
                    } else {
                        out.print("<tr>"
                                + "        <td>" + rs.getString(47) + "</td>"
                                + "        <td>" + rs.getString(48) + "</td>"
                                + "        <td>" + rs.getString(49) + "</td>"
                                + "    </tr>");
                    }
                    if (rs.getString(50).isEmpty() && rs.getString(51).isEmpty() && rs.getString(52).isEmpty()) {
                    } else {
                        out.print("<tr>"
                                + "        <td>" + rs.getString(50) + "</td>"
                                + "        <td>" + rs.getString(51) + "</td>"
                                + "        <td>" + rs.getString(52) + "</td>"
                                + "    </tr>");
                    }
                    if (rs.getString(53).isEmpty() && rs.getString(54).isEmpty() && rs.getString(55).isEmpty()) {
                    } else {
                        out.print("<tr>"
                                + "        <td>" + rs.getString(53) + "</td>"
                                + "        <td>" + rs.getString(54) + "</td>"
                                + "        <td>" + rs.getString(55) + "</td>"
                                + "    </tr>");
                    }


                %>
                <tr>
                    <td colspan="3"> Declaro que fui devidamente informado sobre os riscos e que estarei exposto durante a realização dos serviços referentes a essa 
                        PET e comprometo-me a agir preventivamente, utilizando os EPI’s recomendados e tomando todas as providências que visem 
                        evitar acidentes, impacto ambiental e/ou perda de produção. OBS.: o descumprimento das orientações observadas neste 
                        documento devem ser trados com fome Nomas de Medidas Disciplinares da IBEA. Ao concluir a tarefa entregar essa via a 
                        Segurança do Trabalho, para arquivamento.</td>
           </tr>
            </tbody>
        </table>
        <h3>VIGIAS AUTORIZADOS</h3>
        <table class="w3-table-all">
            <thead>
                <tr>
                    <th>P.A.:</th>
                    <th>Matricula:</th>
                    <th>Nome:</th>
                </tr>
            </thead>
            <tbody>
                <%                         if (rs.getString(56).isEmpty() && rs.getString(57).isEmpty() && rs.getString(58).isEmpty()) {
                    } else {
                        out.print("<tr>"
                                + "        <td>" + rs.getString(56) + "</td>"
                                + "        <td>" + rs.getString(57) + "</td>"
                                + "        <td>" + rs.getString(58) + "</td>"
                                + "    </tr>");
                    }
                    if (rs.getString(59).isEmpty() && rs.getString(60).isEmpty() && rs.getString(61).isEmpty()) {
                    } else {
                        out.print("<tr>"
                                + "        <td>" + rs.getString(59) + "</td>"
                                + "        <td>" + rs.getString(60) + "</td>"
                                + "        <td>" + rs.getString(61) + "</td>"
                                + "    </tr>");
                    }

                %>
                <tr>
                    <td colspan="3">Declaro que fui devidamente informado sobre os riscos e que estarei exposto durante a realização dos serviços referentes a essa 
                        PET e comprometo-me a agir preventivamente, utilizando os EPI’s recomendados e tomando todas as providências que visem 
                        evitar acidentes, impacto ambiental e/ou perda de produção. OBS.: o descumprimento das orientações observadas neste 
                        documento devem ser trados com fome Nomas de Medidas Disciplinares da IBEA. Ao concluir a tarefa entregar essa via a 
                        Segurança do Trabalho, para arquivamento.</td>
                </tr>
            </tbody>
        </table>
            <h3>INFORMAÇÕES ADICIONAIS</h3>
            <table class="w3-table-all">
                <tr>
                    <td><% out.print(rs.getString(62)); %></td>
                </tr>
            </table>






            <%}
                    ps.close();
                    connection.close();
                    //out.print("deu certo");
                } catch (Exception e) {
                    e.printStackTrace();
                }%>
    </body>

</html>