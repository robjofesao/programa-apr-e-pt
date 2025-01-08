<%-- Document : imprimir-apr Created on : 13 de nov. de 2024, 16:46:54 Author : zorinportable --%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <title>Impressão</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="w3.css" />
    </head>
    <%
        try {
            //fazer conexÃ£o com o banco de dados Connection connection;
            PreparedStatement ps;
            Connection connection;
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/parbd", "root",
                    "");
            ps = connection.prepareStatement("select * from apr_reg ar where cod_apr = ?;");
            ps.setString(1, request.getParameter("apr-buscada"));
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
    %>

    <body class="w3-container">
        <h1 class="w3-bar w3-cyan" style="text-align: center;">Analise Preliminar de Risco</h1>
        <!-- cabecario da tabela onde ficara a impressao da apr -->
        <table class="w3-table-all">
            <tr>
                <td>Data:</td>
                <td>
                    <%LocalDate datahoje = LocalDate.now();
                        out.print(datahoje); %>
                </td>
            </tr>
            <!--            <tr>
                            <td>Possui anexo:</td>
                            <td>
            <% %>
        </td>
    </tr>-->
            <tr>
                <td>Colaboradores:</td>
                <td>
                    <%out.print(rs.getString(5) + " " + rs.getString(6)); %>
                </td>
            </tr>
            <tr>
                <td>Tipo de servico a ser executado:</td>
                <td>
                    <% if (rs.getString(7) != null) {
                            out.print(rs.getString(7) + "-");
                        } else {
                        };
                        if (rs.getString(8) != null) {
                            out.print(rs.getString(8) + "-");
                        } else {
                        };
                        if (rs.getString(9) != null) {
                            out.print(rs.getString(9) + "-");
                        } else {
                        };
                        if (rs.getString(10) != null) {
                            out.print(rs.getString(10) + "-");
                        } else {
                        };
                        if (rs.getString(11) != null) {
                            out.print(rs.getString(11) + "-");
                        } else {
                        };
                        if (rs.getString(12) != null) {
                            out.print(rs.getString(12) + "-");
                        } else {
                        };
                        if (rs.getString(13) != null) {
                            out.print(rs.getString(13) + "-");
                        } else {
                        };
                        if (rs.getString(14) != null) {
                            out.print(rs.getString(14) + "-");
                        } else {
                        };
                        if (rs.getString(15) != null) {
                            out.print(rs.getString(15));
                        };

                    %>



                </td>
            </tr>
            <tr>
                <td>Descricao da atividade/servico:</td>
                <td>
                    <%out.print(rs.getString(2)); %>
                </td>
            </tr>
            <tr>
                <td>Data de abertura:</td>
                <td>
                    <%out.print(rs.getString(4)); %>
                </td>
            </tr>
            <tr>
                <td>Data de termino:</td>
                <td>___/___/___</td>
            </tr>
            <!--            <tr>
                            <td>Unidade/local:</td>
                            <td>
            <% %>
        </td>
    </tr>-->

        </table>
        <h2 class="w3-bar w3-cyan" style="text-align: center;">Riscos Avaliados</h2>

        <table class="w3-table-all">
            <tr>
                <th>
                    Riscos Avaliados
                </th>
                <th>
                    Medidas de Controle
                </th>
            </tr>
            <%
                if (rs.getString(16) != null && rs.getString(86) != null) {
                    out.print("<tr><td>" + rs.getString(16) + "</td><td>" + rs.getString(86) + "</td></tr>");
                } else {
                };
                if (rs.getString(17) != null && rs.getString(87) != null) {
                    out.print("<tr><td>" + rs.getString(17) + "</td><td>" + rs.getString(87) + "</td></tr>");
                } else {
                };
                if (rs.getString(18) != null && rs.getString(88) != null) {
                    out.print("<tr><td>" + rs.getString(18) + "</td><td>" + rs.getString(88) + "</td></tr>");
                } else {
                };
                if (rs.getString(19) != null && rs.getString(89) != null) {
                    out.print("<tr><td>" + rs.getString(19) + "</td><td>" + rs.getString(89) + "</td></tr>");
                } else {
                };
                if (rs.getString(20) != null && rs.getString(90) != null) {
                    out.print("<tr><td>" + rs.getString(20) + "</td><td>" + rs.getString(90) + "</td></tr>");
                } else {
                };
                if (rs.getString(21) != null && rs.getString(91) != null) {
                    out.print("<tr><td>" + rs.getString(21) + "</td><td>" + rs.getString(91) + "</td></tr>");
                } else {
                };
                if (rs.getString(22) != null && rs.getString(92) != null) {
                    out.print("<tr><td>" + rs.getString(22) + "</td><td>" + rs.getString(92) + "</td></tr>");
                } else {
                };
                if (rs.getString(23) != null && rs.getString(93) != null) {
                    out.print("<tr><td>" + rs.getString(23) + "</td><td>" + rs.getString(93) + "</td></tr>");
                } else {
                };
                if (rs.getString(24) != null && rs.getString(94) != null) {
                    out.print("<tr><td>" + rs.getString(24) + "</td><td>" + rs.getString(94) + "</td></tr>");
                } else {
                };
                if (rs.getString(25) != null && rs.getString(95) != null) {
                    out.print("<tr><td>" + rs.getString(25) + "</td><td>" + rs.getString(95) + "</td></tr>");
                } else {
                };
                if (rs.getString(26) != null && rs.getString(96) != null) {
                    out.print("<tr><td>" + rs.getString(26) + "</td><td>" + rs.getString(96) + "</td></tr>");
                } else {
                };
                if (rs.getString(27) != null && rs.getString(97) != null) {
                    out.print("<tr><td>" + rs.getString(27) + "</td><td>" + rs.getString(97) + "</td></tr>");
                } else {
                };
                if (rs.getString(28) != null && rs.getString(98) != null) {
                    out.print("<tr><td>" + rs.getString(28) + "</td><td>" + rs.getString(98) + "</td></tr>");
                } else {
                };
                if (rs.getString(29) != null && rs.getString(99) != null) {
                    out.print("<tr><td>" + rs.getString(29) + "</td><td>" + rs.getString(99) + "</td></tr>");
                } else {
                };
                if (rs.getString(30) != null && rs.getString(100) != null) {
                    out.print("<tr><td>" + rs.getString(30) + "</td><td>" + rs.getString(100) + "</td></tr>");
                } else {
                };
                if (rs.getString(31) != null && rs.getString(101) != null) {
                    out.print("<tr><td>" + rs.getString(31) + "</td><td>" + rs.getString(101) + "</td></tr>");
                } else {
                };
                if (rs.getString(32) != null && rs.getString(102) != null) {
                    out.print("<tr><td>" + rs.getString(32) + "</td><td>" + rs.getString(102) + "</td></tr>");
                } else {
                };
                if (rs.getString(33) != null && rs.getString(103) != null) {
                    out.print("<tr><td>" + rs.getString(33) + "</td><td>" + rs.getString(103) + "</td></tr>");
                } else {
                };
                if (rs.getString(34) != null && rs.getString(104) != null) {
                    out.print("<tr><td>" + rs.getString(34) + "</td><td>" + rs.getString(104) + "</td></tr>");
                } else {
                };
                if (rs.getString(35) != null && rs.getString(105) != null) {
                    out.print("<tr><td>" + rs.getString(35) + "</td><td>" + rs.getString(105) + "</ tr>");
                } else {
                };
                if (rs.getString(36) != null && rs.getString(106) != null) {
                    out.print("<tr><td>" + rs.getString(36) + "</td><td>" + rs.getString(106) + "</td></tr>");
                } else {
                };
                if (rs.getString(37) != null && rs.getString(107) != null) {
                    out.print("<tr><td>" + rs.getString(37) + "</td><td>" + rs.getString(107) + "</td></tr>");
                } else {
                };
                if (rs.getString(38) != null && rs.getString(108) != null) {
                    out.print("<tr><td>" + rs.getString(38) + "</td><td>" + rs.getString(108) + "</td></tr>");
                } else {
                };
                if (rs.getString(39) != null && rs.getString(109) != null) {
                    out.print("<tr><td>" + rs.getString(39) + "</td><td>" + rs.getString(109) + "</td></tr>");
                } else {
                };
                if (rs.getString(40) != null && rs.getString(110) != null) {
                    out.print("<tr><td>" + rs.getString(40) + "</td><td>" + rs.getString(110) + "</td></tr>");
                } else {
                };
                if (rs.getString(41) != null && rs.getString(111) != null) {
                    out.print("<tr><td>" + rs.getString(41) + "</td><td>" + rs.getString(111) + "</td></tr>");
                } else {
                };
                if (rs.getString(42) != null && rs.getString(112) != null) {
                    out.print("<tr><td>" + rs.getString(42) + "</td><td>" + rs.getString(112) + "</td></tr>");
                } else {
                };
                if (rs.getString(43) != null && rs.getString(113) != null) {
                    out.print("<tr><td>" + rs.getString(43) + "</td><td>" + rs.getString(113) + "</td></tr>");
                } else {
                };
                if (rs.getString(44) != null && rs.getString(114) != null) {
                    out.print("<tr><td>" + rs.getString(44) + "</td><td>" + rs.getString(114) + "</td></tr>");
                } else {
                };
                if (rs.getString(45) != null && rs.getString(115) != null) {
                    out.print("<tr><td>" + rs.getString(45) + "</td><td>" + rs.getString(115) + "</td></tr>");
                } else {
                };
                if (rs.getString(46) != null && rs.getString(116) != null) {
                    out.print("<tr><td>" + rs.getString(46) + "</td><td>" + rs.getString(116) + "</td></tr>");
                } else {
                };
                if (rs.getString(47) != null && rs.getString(117) != null) {
                    out.print("<tr><td>" + rs.getString(47) + "</td><td>" + rs.getString(117) + "</td></tr>");
                } else {
                };
                if (rs.getString(48) != null && rs.getString(118) != null) {
                    out.print("<tr><td>" + rs.getString(48) + "</td><td>" + rs.getString(118) + "</td></tr>");
                } else {
                };

            %>


        </table>
        <h2 class="w3-bar w3-cyan" style="text-align: center;">Recomendacoes complementares</h2>
        <table class="w3-table-all">
            <tr>
                <td>
                    <%out.print(rs.getString(49));%>
                </td>
            </tr>
        </table>
        <h2 class="w3-bar w3-cyan" style="text-align: center;">Reuniao especifica para inicio do servico</h2>
        <table class="w3-table-all">
            <tr>
                <td>
                    1) A equipe tem pleno conhecimento dos riscos contidos neste documento?
                </td>
                <td>
                    <%out.print(rs.getString(50)); %>
                </td>
            </tr>
            <tr>
                <td>
                    2) Foram verificadas condições físicas e estado de espírito dos membros da equipe? 
                </td>
                <td>
                    <%out.print(rs.getString(51)); %>
                </td>
            </tr>
            <tr>
                <td>
                    3) Comentários sobre acidente já ocorrido na execução deste serviço?  
                </td>
                <td>
                    <%out.print(rs.getString(52)); %>
                </td>
            </tr>

            <tr>
                <td>
                    4) Verificou-se o porte e as condições dos EPI por parte dos membros da equipe? 
                </td>
                <td>
                    <%out.print(rs.getString(53)); %>
                </td>
            </tr>
            <tr>
                <td>
                    5) Foram observadas as condições ambientais no local de trabalho?  
                </td>
                <td>
                    <%out.print(rs.getString(54)); %>
                </td>
            </tr>
            <tr>
                <td>
                    6) Foram realizadas Inspeções de pré-uso nas ferramentas / equipamentos?  
                </td>
                <td>
                    <%out.print(rs.getString(55)); %>
                </td>
            </tr>
            <tr>
                <td>
                    Data da reuniao:  
                </td>
                <td>
                    <% out.print(rs.getString(56));%>
                </td>
            </tr>
            <tr>
                <td>
                    Lider/supervisor/encarregado:  
                </td>
                <td>
                    _____________________________
                </td>
            </tr>
        </table>
        <h2 class="w3-bar w3-cyan" style="text-align: center;">Componentes da equipe</h2>
        <table class="w3-table-all">
            <%

                if (rs.getString(57).isEmpty() && rs.getString(69).isEmpty()) {

                } else {
                    out.print("<tr><td>" + rs.getString(57) + " " + rs.getString(69) + "</td><td>_______________________________</td></tr>");
                };
                if (rs.getString(58).isEmpty() && rs.getString(70).isEmpty()) {

                } else {
                    out.print("<tr><td>" + rs.getString(58) + " " + rs.getString(70) + "</td><td>_______________________________</td></tr>");
                };
                if (rs.getString(59).isEmpty() && rs.getString(71).isEmpty()) {

                } else {
                    out.print("<tr><td>" + rs.getString(59) + " " + rs.getString(71) + "</td><td>_______________________________</td></tr>");
                };
                if (rs.getString(60).isEmpty() && rs.getString(72).isEmpty()) {

                } else {
                    out.print("<tr><td>" + rs.getString(60) + " " + rs.getString(72) + "</td><td>_______________________________</td></tr>");
                };
                if (rs.getString(61).isEmpty() && rs.getString(73).isEmpty()) {

                } else {
                    out.print("<tr><td>" + rs.getString(61) + " " + rs.getString(73) + "</td><td>_______________________________</td></tr>");
                };
                if (rs.getString(62).isEmpty() && rs.getString(74).isEmpty()) {

                } else {
                    out.print("<tr><td>" + rs.getString(62) + " " + rs.getString(74) + "</td><td>_______________________________</td></tr>");
                };
                if (rs.getString(63).isEmpty() && rs.getString(75).isEmpty()) {

                } else {
                    out.print("<tr><td>" + rs.getString(63) + " " + rs.getString(75) + "</td><td>_______________________________</td></tr>");
                };
                if (rs.getString(64).isEmpty() && rs.getString(76).isEmpty()) {

                } else {
                    out.print("<tr><td>" + rs.getString(64) + " " + rs.getString(76) + "</td><td>_______________________________</td></tr>");
                };
                if (rs.getString(65).isEmpty() && rs.getString(77).isEmpty()) {

                } else {
                    out.print("<tr><td>" + rs.getString(65) + " " + rs.getString(77) + "</td><td>_______________________________</td></tr>");
                };
                if (rs.getString(66).isEmpty() && rs.getString(78).isEmpty()) {

                } else {
                    out.print("<tr><td>" + rs.getString(66) + " " + rs.getString(78) + "</td><td>_______________________________</td></tr>");
                };
                if (rs.getString(67).isEmpty() && rs.getString(79).isEmpty()) {

                } else {
                    out.print("<tr><td>" + rs.getString(67) + " " + rs.getString(79) + "</td><td>_______________________________</td></tr>");
                };
                if (rs.getString(68).isEmpty() && rs.getString(80).isEmpty()) {

                } else {
                    out.print("<tr><td>" + rs.getString(68) + " " + rs.getString(80) + "</td><td>_______________________________</td></tr>");
                };
            %>
        </table>
        <p><b>DE ACORDO:</b> (Matrícula e Assinatura – dos participantes da elaboração da APR)</p>
        <table class="w3-table-all">
            <tr>
                <td>
                    Responsavel pela area: 
                </td>
                <td>
                    <% out.print(rs.getString(81));%>  _____________________________
                </td>
            </tr>
            <tr>
                <td>
                    Executante do servico:
                </td>
                <td>
                    <% out.print(rs.getString(82));%>  _____________________________
                </td>
            </tr>
            <tr>
                <td>
                    Contratada:
                </td>
                <td>
                    <% out.print(rs.getString(83));%>  _____________________________
                </td>
            </tr>
            <tr>
                <td>
                    SST responsavel:
                </td>
                <td>
                    <% out.print(rs.getString(84));%>  _____________________________
                </td>
            </tr>
            <tr>
                <td>
                    Solicitante do servico:
                </td>
                <td>
                    <% out.print(rs.getString(85));%>  _____________________________
                </td>
            </tr>
        </table>
        <%}
                ps.close();
                connection.close();
                //out.print("deu certo");
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>

    </body>

</html>