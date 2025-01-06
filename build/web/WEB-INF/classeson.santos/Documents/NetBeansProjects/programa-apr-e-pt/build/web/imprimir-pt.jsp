<%-- Document : imprimir-apr Created on : 13 de nov. de 2024, 16:46:54 Author : zorinportable --%>
<%@page import="java.time.LocalDate" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Impressão de Permissão de Trabalho - Indústria</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>

    <%
        try {
            //fazer conexÃ£o com o banco de dados Connection connection;
            PreparedStatement ps;
            Connection connection;
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/parbd", "root",
                    "");
            ps = connection.prepareStatement("select * from pt_reg ar where id = ?;");
            ps.setString(1, request.getParameter("pt-buscada"));
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
    %>
    <body class="w3-container">

        <h1>Impressão de Permissão de Trabalho - Indústria</h1>
        <table class="w3-table-all w3-border">
            <tr>
                <td class="w3-border">
                    Departamento: <% out.print(rs.getString(2)); %>
                </td>
                <td class="w3-border">
                    Data: <% out.print(rs.getString(4)); %>
                </td>
            </tr>
            <tr>
                <td class="w3-border">
                    Hora de ínicio: <% out.print(rs.getString(5)); %>
                </td>
                <td class="w3-border">
                    Equipamento / Local: <% out.print(rs.getString(3)); %>
                </td>
            </tr>
            <tr>
                <td>
            <spam> Descrição da atividade: <% out.print(rs.getString(6)); %>
            </spam>
        </td>
    </tr>
</table>
<h2>SEÇÃO DE BAIXO RISCO</h2>
<% //verificar se os campos estao preenchidos no banco
    if (rs.getString(7) == (null) && rs.getString(8) == (null) && rs.getString(9) == (null) && rs.getString(10) == (null) && rs.getString(11) == (null) && rs.getString(12) == (null) && rs.getString(13) == (null)) {

    } else {

%>
<table class="w3-table-all">
    <tr>
        <th class="w3-border">Item</th>
        <th class="w3-border">Resposta</th>

    </tr>
    <tr>
        <td class="w3-border">As áreas afetadas foram notificadas?</td>
        <td class="w3-border">
            <% out.print(rs.getString(7)); %>
        </td>

    </tr>
    <tr>
        <td class="w3-border">As ferramentas manuais disponíveis estão em condições de uso?</td>
        <td class="w3-border">
            <% out.print(rs.getString(11)); %>
        </td>

    </tr>
    <tr>
        <td class="w3-border">Todos os riscos identificados estão contemplados na APR?</td>
        <td class="w3-border">
            <% out.print(rs.getString(8)); %>
        </td>

    </tr>
    <tr>
        <td class="w3-border">A área está limpa, foi isolada e ou sinalizada?</td>
        <td class="w3-border">
            <% out.print(rs.getString(12)); %>
        </td>

    </tr>
    <tr>
        <td class="w3-border">Foi realizado o controle das energias perigosas conforme procedimento
            de LOTO e foi realizado o teste de energia ZERO nos equipamentos?</td>
        <td class="w3-border">
            <% out.print(rs.getString(9)); %>
        </td>

    </tr>
    <tr>
        <td class="w3-border">Os EPI's estão em boas condições e conforme descritos na APR?</td>
        <td class="w3-border">
            <% out.print(rs.getString(13)); %>
        </td>
    </tr>
    <tr>
        <td class="w3-border">Os executantes foram orientados sobre os acessos a chuveiro e
            lava-olhos de emergência e comunicação de emergência?</td>
        <td class="w3-border">
            <% out.print(rs.getString(10));
                    //final do else  
                }%> 
        </td>

    </tr>
    <tr>
        <td class="w3-border">É necessário o preechimento de outro documento?</td>
        <td class="w3-border">
            <% if (rs.getString(14) == (null)) {
                } else {
                    out.print("[Não aplicável] ");
                }
                if (rs.getString(15) == (null)) {
                } else {
                    out.print("[PET - Espaço confinado] ");
                }
                if (rs.getString(16) == (null)) {
                } else {
                    out.print("[Plano de içamento de cargas] ");
                }

            %>
        </td>

    </tr>
</table>
<!-- áreas classificadas -->
<h2>SEÇÃO DE ALTO RISCO</h2>
<h3>ÁREAS CLASSIFICADAS</h3>
<%    if (rs.getString(17).isEmpty() && rs.getString(18).isEmpty() && rs.getString(19).isEmpty() && rs.getString(20).isEmpty() && rs.getString(21).isEmpty()) {
        out.print("<H4>   *  Não Aplicável</H4>");
    } else {

        // areas classificadas
        out.print("<H5><strong>* Nota, essa seção é aplicavel para o caso de serviços em que exiga a possibilidade de geração de fagulha/faisca ou outra ignição com potencial de explosao.</strong></H5>");
        out.print(""
                + "<table class=\"w3-table-all\">"
                + "<tr>"
                + "<th class=\"w3-border\">Item</th>"
                + "<th class=\"w3-border\">Resposta</th>"
                + "</tr>"
                + "<tr>"
                + "<td class=\"w3-border\">Todos os executantes são autorizados?</td>"
                + "<td class=\"w3-border\">"
                + rs.getString(17)
                + "</td>"
                + "</tr>");

        out.println(
                "<tr>"
                + "<td class=\"w3-border\">Existe a presença de atmosfera com gases, vapores, poeiras ou"
                + " fibras gerando risco de explosividade na execução da atividade?"
                + " Obs: Caso a resposta seja positiva, é necessário eliminar a"
                + " possibilidade de centelhas durante a execução da atividade ou"
                + " garantir a ausência da atmosfera explosiva durante todo o tempo de"
                + " execução da tarefa, conforme determina NBR IEC 60079-17.</td>"
                + " <td class=\"w3-border\">"
                + rs.getString(18)
                + " </td>"
                + " </tr>");

        out.print(""
                + "<tr>"
                + "<td class=\"w3-border\">O sistema está completamente drenado, purgado e limpo?</td>"
                + "<td class=\"w3-border\">"
                + rs.getString(19)
                + "</td>"
                + "</tr>");

        out.print(""
                + "<tr>"
                + "<td class=\"w3-border\">O monitoramento atmosférico dos gases e vapores foi realizado?</td>"
                + "<td class=\"w3-border\">"
                + rs.getString(20)
                + "%</td>"
                + "</tr>");

        out.print(
                "<tr>"
                + "<td class=\"w3-border\">O sistema de combate a incêndio está disponível e funcionando"
                + "adequadamente?</td>"
                + "<td class=\"w3-border\">"
                + rs.getString(21)
                + "</td>"
                + "</tr>"
                + "</table>");

    }


%>

<!-- Trabalho com eletricidade -->
<h3>TRABALHO COM ELETRICIDADE</h3>
<%    //seção eletrica
    if (rs.getString(22).isEmpty() && rs.getString(23).isEmpty() && rs.getString(24).isEmpty() && rs.getString(25).isEmpty()) {
        out.print("<H4>   *  Não Aplicável</H4>");
    } else {
        out.print(""
                + "<table class=\"w3-table-all\">"
                + "<tr>"
                + "<th class=\"w3-border\">Item</th>"
                + "<th class=\"w3-border\">Resposta</th>"
                + "</tr>"
                + "<tr>"
                + "<td class=\"w3-border\">Ferramentas são isoladas para a voltagem requerida?</td>"
                + "<td class=\"w3-border\">"
                + rs.getString(22)
                + "</td>"
                + "</tr>"
                + "<tr>"
                + "<td class=\"w3-border\">Em caso de acidente ou incêndio, os colaboradores sabem como deverão"
                + "agir?</td>"
                + "<td class=\"w3-border\">"
                + rs.getString(24)
                + "</td>"
                + "</tr>"
                + "<tr>"
                + "<td class=\"w3-border\">O equipamento está aterrado?</td>"
                + "<td class=\"w3-border\">"
                + rs.getString(23)
                + "</td>"
                + "</tr>"
                + "<tr>"
                + "<td class=\"w3-border\">Há extintor de fácil acesso?</td>"
                + "<td class=\"w3-border\">"
                + rs.getString(25)
                + "</td>"
                + "</tr>"
                + "</table>");
    }
%>




<!-- Serviço a quente -->
<h3>SERVIÇO A QUENTE</h3>
<%
    if (rs.getString(26).isEmpty()
            && rs.getString(27).isEmpty()
            && rs.getString(28).isEmpty()
            && rs.getString(29).isEmpty()
            && rs.getString(30).isEmpty()
            && rs.getString(31).isEmpty()
            && rs.getString(32).isEmpty()
            && rs.getString(33).isEmpty()
            && rs.getString(34).isEmpty()) {

        out.print("<H4>   *  Não Aplicável</H4>");

    } else {

        out.print(""
                + "<table class=\"w3-table-all\">"
                + "<tr>"
                + "<th class=\"w3-border\">Item</th>"
                + "<th class=\"w3-border\">Resposta</th>"
                + "</tr>"
                + "<tr>"
                + "<td class=\"w3-border\">Há necessidade da presença de um brigadista de emergência ou vigilante"
                + "de emergência acompanhando a execução do trabalho?</td>"
                + "<td class=\"w3-border\">"
                + rs.getString(26)
                + "</td>"
                + "</tr>"
                + "<tr>"
                + "        <td class=\"w3-border\">O sistema de combate incêndio (extintor, hidrantes, etc.) está"
                + "            adequado ao tipo de serviço e disponível no local? As pessoas estão protegidas contra a radiação com barreiras de"
                + "            proteção?</td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(30)
                + "        </td>"
                + "    <tr>"
                + "        <td class=\"w3-border\">É necessário uma ventilação/exaustão?</td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(27)
                + "</td>"
                + "</tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">Foi verificado na esmerilhadeira/lixadeira as condições da coifa de"
                + "            segurança, do rebolo, cabo de alimentação, disco adequado ao serviço?</td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(31)
                + "        </td>"
                + ""
                + "    </tr>   "
                + " <tr>"
                + "        <td class=\"w3-border\">Foi verificado no conjunto oxiacetilênico e GLP, reguladores de"
                + "            pressão, manômetros, válvulas unidirecionais, dispositivo contra retrocesso de chama,"
                + "            ajuste de abraçadeiras das mangueiras, acendedor de fricção, cilindros na posição"
                + "            vertical, mangueiras sem emendas, ausência de graxa e óleo nos equipamentos?</td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(28)
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">Foi verificado na máquina de solda as condições do cabo de"
                + "            alimentação? A peça a ser soldada está ligada ao pólo de retorno (terra) da máquina  de solda?</td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(32)
                + "</td>"
                + "</tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">Bandejas de cabos elétricos, tubulações de fibra de vidro e painéis"
                + "            estão protegidos? As aberturas em pisos, paredes, portas e drenos foram fechadas, cobertas ou protegidas?</td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(29)
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">As mangueiras, extensões e fios elétricos estão protegidos contra"
                + "tráfego de veículos e de pessoas, quedas de objetos, contato com água, superfícies"
                + "aquecidas ou substâncias químicas?</td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(34)
                + "        </td>"
                + "    </tr>"
                + "</table>");

    }


%>


<!-- serviço em altura -->
<h2>TRABALHO EM ALTURA</h2>
<%    if (rs.getString(35).isEmpty()
            && rs.getString(36).isEmpty()
            && rs.getString(37).isEmpty()
            && rs.getString(38).isEmpty()
            && rs.getString(39).isEmpty()
            && rs.getString(40).isEmpty()
            && rs.getString(41).isEmpty()
            && rs.getString(42).isEmpty()
            && rs.getString(43).isEmpty()
            && rs.getString(44).isEmpty()) {

        out.print("<H4>   *  Não Aplicável</H4>");

    } else {

        out.print(""
                + ""
                + "<table class=\"w3-table-all\">"
                + "    <tr>"
                + "        <th class=\"w3-border\">Item</th>"
                + "        <th class=\"w3-border\">Resposta</th>"
                + "    "
                + "</tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">Foi revista a hierarquia de proteção contra queda e selecionado o modo"
                + "            mais seguro para o desempenho da atividade?</td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(35)
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">A pessoa de contato (vigilante de emergência) sabe o modo de"
                + "            comunicação em caso de emergência?</td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(41)
                + "        </td>"
                + ""
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">Foi verificado a possibilidade de o usário estar 100% conectado ao"
                + "            ponto de ancoragem e o mesmo foi roientado</td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(39)
                + "        </td>"
                + ""
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">O ponto de ancoragem (não projetado) suportará 2.268kg?</td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(36)
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">O Executante está utilizando os EPI's necessários para trabalho em"
                + "            altura?</td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(42)
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">O ponto de ancoragem (projetado) foi aprovado por um profissional"
                + "            legalmente habilitado?</td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(37)
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">O sistema de retenção foi ajustado de modo a evitar que o executante tenha uma queda livre maior que 1,80m? Em caso de queda o talabarte/travaquedas foi instalado de modo que o "
                + "            usuário não possa bater contra instalações/equipamentos abaixo ou dos lados (efeito"
                + "            pêndulo)?</td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(43)
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">Todos os equipamentos usados na retenção de quedas foram inspecionados"
                + "            conforme plano de inspeção e estão aprovados?</td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(38)
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">O executante possui treinamento de 8 horas conforme descrito na NR-35 e apto"
                + "            clinicamente para executar a atividade (aferir a pressão arterial)?</td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(44)
                + "        </td>"
                + "    </tr>"
                + "</table>");
    }
%>


<!-- TRABALHO COM PRODUTOS QUÍMICOS-->
<h2>TRABALHO COM PRODUTOS QUÍMICOS</h2>

<%
    if (rs.getString(45).isEmpty()
            && rs.getString(46).isEmpty()
            && rs.getString(47).isEmpty()
            && rs.getString(48).isEmpty()
            && rs.getString(99).isEmpty()
            && rs.getString(50).isEmpty()) {

        out.print("<H4>   *  Não Aplicável</H4>");

    } else {
        out.print("<table class=\"table w3-table-all\">"
                + "    <tr>"
                + "        <th class=\"w3-border\">"
                + "            Item"
                + "        </th>"
                + "        <th class=\"w3-border\">"
                + "            Resposta"
                + "        </th>"
                + "    </tr>"
                + ""
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            Há disponível kit para contenção de vazamentos?  "
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(45)
                + "        </td>"
                + "    </tr>"
                + ""
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            Mangueiras de engate estão devidamente engatadas?  "
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(48)
                + "        </td>"
                + "    </tr>"
                + ""
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            O tanque está despressurizado?  "
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(46)
                + "        </td>"
                + "    </tr>"
                + ""
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            A carreta está travada (com calços e freio de mão puxado)?  "
                + "        </th>"
                + "        <td class=\"w3-border\">"
                + rs.getString(49)
                + "        </td>"
                + "    </tr>"
                + ""
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            Chuveiro de Emergência, Lava-olhos, extintores e hidrantes estão funcionando? Há fácil acesso à eles?  "
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(47)
                + "        </td>"
                + "    </tr>"
                + ""
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            O motorista está com os EPIs adequados?  "
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(50)
                + "        </td>"
                + "    </tr>"
                + "    </table>");

    }
%>



<!-- ESCAVAÇÃO E DEMOLIÇÃO -->
<h2>ESCAVAÇÃO E DEMOLIÇÃO</h2>

<%
    if (rs.getString(51).isEmpty()
            && rs.getString(52).isEmpty()
            && rs.getString(53).isEmpty()
            && rs.getString(54).isEmpty()
            && rs.getString(55).isEmpty()
            && rs.getString(56).isEmpty()
            && rs.getString(57).isEmpty()
            && rs.getString(58).isEmpty()) {

        out.print("<H4>   *  Não Aplicável</H4>");

    } else {

        out.print("<table class=\"w3-table-all\">"
                + "    <tr>"
                + "        <th class=\"w3-border\">"
                + "            Item"
                + "        </th>"
                + "        <th class=\"w3-border\">"
                + "            Resposta"
                + "        </th>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "        A engenharia realizou uma inspeção ou foi consultada quanto a passagem de tulações"
                + "            elétricas, rede de esgoto e/ou possibilidade de colapso da estrutura?"
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(51)
                + " </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            Foi determinado a distância mínima de 3m do equipamento bate estaca da redes elétricas?"
                + "            O bate estaca foi travado para evitar o seu tombamento?"
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(55)
                + ""
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            Os riscos subterraneos (tubulações elétricas) foram identificados, desativados e o"
                + "            procedimento de LOTO foi aplicado?"
                + "        </td>        <td class=\"w3-border\">"
                + rs.getString(52)
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            A iluminação é suficiente e as condições metereológicas são adequadas? Foi removido"
                + "            vidros, janelas, telhados, etc. da estrutura a ser demolida?"
                + "        </td>"
                + "        <td class=\"w3-border\">           "
                + rs.getString(56)
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            Para evitar desmoronamento: Foi verificado o tipo de terreno a ser escavado? Foi"
                + "            determinado o ângulo da escavação, para profundidade superior a 1,20m?"
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(53)
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            Foi previsto o escoramento da parede da escavação com profundidade maior que 1,20m? Em"
                + "            demolição, é necessário o escoramento de paredes, pisos ou lajes?"
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(57)
                + "       </td>    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            Foi avaliado a necessidade de permissão de espaço confinado? Foi prevista escada de"
                + "            acesso para escavação superior a 1,20m?"
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(54)
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            O trânsito do local foi interrompido ou desviado? Existe algum tipo de substância"
                + "            química perigosa (gases, explosivos, materiais inflamáveis) na demolição?"
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(58)
                + ""
                + "        </td>"
                + "    </tr>"
                + "</table>");
    }
%>

<!-- Serviço com Hidrojateamento -->
<h2>SERVIÇO COM HIDROJATEAMENTO</h2>
<%
    if (rs.getString(59).isEmpty()
            && rs.getString(60).isEmpty()) {

        out.print("<H4>   *  Não Aplicável</H4>");

    } else {

        out.print("<table class=\"table w3-table-all\">"
                + "    <tr>"
                + "        <th class=\"w3-border\">"
                + "            Item"
                + "        </th>"
                + "        <th class=\"w3-border\">"
                + "            Resposta"
                + "        </th>"
                + "    </tr>   "
                + " <tr>      "
                + "  <td class=\"w3-border\">"
                + "            Os colaboradores foram orientados sobre os riscos referentes à atividade?"
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(59)
                + "    </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            A Atividade será realizada em espaço confinado? Em caso afirmativo, foi emitida PET?"
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(60)
                + "        </td>"
                + "    </tr>"
                + "</table>");
    }

%>




<!-- ABERTURA DE LINHAS E EQUIPAMENTOS -->
<h2>ABERTURA DE LINHAS E EQUIPAMENTOS</h2>
<%    if (rs.getString(61).isEmpty()
            && rs.getString(62).isEmpty()
            && rs.getString(63).isEmpty()
            && rs.getString(64).isEmpty()) {

        out.print("<H4>   *  Não Aplicável</H4>");

    } else {

        out.print("<table class=\"table w3-table-all\">"
                + "    <tr>"
                + "        <th class=\"w3-border\">"
                + "            Item"
                + "        </th>"
                + "        <th class=\"w3-border\">"
                + "            Resposta"
                + "        </th>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            Foram analisados os riscos envolvidos e precauções necessárias?"
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(61)
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "        Há necessidade de duplo bloqueio?"
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(63)
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            Foi utilizado algum método de descontaminação ou purga do sistema (drenagem, sopragem,"
                + "            lavagem, despressurização ou resfriamento) ?"
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(62)
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            Serviço em linha ou equipamento com material perigoso?"
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(64)
                + "        </td>"
                + "    </tr>"
                + "</table>");
    }

%>


<!-- MOVIMENTAÇÃO E IÇAMENTO DE CARGAS -->
<h2>MOVIMENTAÇÃO E IÇAMENTO DE CARGAS</h2>
<%    if (rs.getString(65).isEmpty()
            && rs.getString(66).isEmpty()
            && rs.getString(67).isEmpty()
            && rs.getString(68).isEmpty()
            && rs.getString(69).isEmpty()
            && rs.getString(70).isEmpty()
            && rs.getString(71).isEmpty()) {

        out.print("<H4>   *  Não Aplicável</H4>");

    } else {

        out.print("<table class=\"table w3-table-all\">"
                + "    <tr>"
                + "        <th class=\"w3-border\">"
                + "            Item"
                + "        </th>"
                + "        <th class=\"w3-border\">"
                + "            Resposta"
                + "        </th>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            Verificado se o equipamento possui tabela de carga em português na cabine do operador? O"
                + "            operador verificou a tabela para esta manobra?"
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(65)
                + "    </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            Os olhais e pontos de pegas estão de acordo com a capacidade de carga? Cintas estão"
                + "            definidas com a capacidade por códigos de cores e as etiquetas estão legíveis? Os cabos"
                + "            de aço estão em perfeitas condições de uso com os grampos adequados?"
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(69)
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            Apresentado check list de inspeção de pré-uso dos equipamentos, se necessário?"
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(66)
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            O guindaste/guindauto está patolado e nivelado sobre calços de madeira e solo firme"
                + "            longe de caixas de passagens e ou redes pluviais?"
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(70)
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "            A área foi isolada e sinalizada e pessoas estão fora de zona de risco? Existe corda para"
                + "            ser utilizada na movimentação da carga, neutralizando o contato com as mãos?"
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(67)
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "        O raio de movimentação da lança e carga estão livres de obstáculos e redes elétricas?"
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(71)
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">"
                + "        Foram checadas as condições do tempo (vento, chuva e descargas atmosféricas) que podem"
                + "        interferir na movimentação da carga?"
                + "        </td>"
                + "        <td class=\"w3-border\">"
                + rs.getString(68)
                + "        </td>"
                + "    </tr>"
                + "</table>");

    }
%>




<!-- EQUIPAMENTOS DE PROTEÇÃO INDIVIDUAL -->
<h2>EQUIPAMENTOS DE PROTEÇÃO INDIVIDUAL</h2>
<table class="w3-table-all">
    <tr>
        <th>
            EPI
        </th>
    </tr>
    <tr>
        <td>
            Capacete de segurança com jugular
        </td>
    </tr>
    <tr>
        <td>
            Óculos de segurança
        </td>
    </tr>
    <tr>
        <td>
            Protetor auricular
        </td>
    </tr>
    <tr>
        <td>
            Calçado de segurança com biqueira de composite ou similar
        </td>
    </tr>
    <tr>
        <td>
            Luva de segurança para riscos mecânicos
        </td>
    </tr>
    <%
        if (rs.getString(72) != null) {
            out.print("<tr><td>" + rs.getString(72) + "</td></tr>");
        }
        if (rs.getString(73) != null) {
            out.print("<tr><td>" + rs.getString(73) + "</td></tr>");
        }
        if (rs.getString(74) != null) {
            out.print("<tr><td>" + rs.getString(74) + "</td></tr>");
        }
        if (rs.getString(75) != null) {
            out.print("<tr><td>" + rs.getString(75) + "</td></tr>");
        }
        if (rs.getString(76) != null) {
            out.print("<tr><td>" + rs.getString(76) + "</td></tr>");
        }
        if (rs.getString(77) != null) {
            out.print("<tr><td>" + rs.getString(77) + "</td></tr>");
        }
        if (rs.getString(78) != null) {
            out.print("<tr><td>" + rs.getString(78) + "</td></tr>");
        }
        if (rs.getString(79) != null) {
            out.print("<tr><td>" + rs.getString(79) + "</td></tr>");
        }
        if (rs.getString(80) != null) {
            out.print("<tr><td>" + rs.getString(80) + "</td></tr>");
        }
        if (rs.getString(81) != null) {
            out.print("<tr><td>" + rs.getString(81) + "</td></tr>");
        }
        if (rs.getString(82) != null) {
            out.print("<tr><td>" + rs.getString(82) + "</td></tr>");
        }
        if (rs.getString(83) != null) {
            out.print("<tr><td>" + rs.getString(83) + "</td></tr>");
        }
        if (rs.getString(84) != null) {
            out.print("<tr><td>" + rs.getString(84) + "</td></tr>");
        }
        if (rs.getString(85) != null) {
            out.print("<tr><td>" + rs.getString(85) + "</td></tr>");
        }
        if (rs.getString(86) != null) {
            out.print("<tr><td>" + rs.getString(86) + "</td></tr>");
        }
        if (rs.getString(87) != null) {
            out.print("<tr><td>" + rs.getString(87) + "</td></tr>");
        }
        if (rs.getString(88) != null) {
            out.print("<tr><td>" + rs.getString(88) + "</td></tr>");
        }
        if (rs.getString(89) != null) {
            out.print("<tr><td>" + rs.getString(89) + "</td></tr>");
        }
        if (rs.getString(90) != null) {
            out.print("<tr><td>" + rs.getString(90) + "</td></tr>");
        }
        if (rs.getString(91) != null) {
            out.print("<tr><td>" + rs.getString(91) + "</td></tr>");
        }
        if (rs.getString(92) != null) {
            out.print("<tr><td>" + rs.getString(92) + "</td></tr>");
        }
        if (rs.getString(93) != null) {
            out.print("<tr><td>" + rs.getString(93) + "</td></tr>");
        }
        if (rs.getString(94) != null) {
            out.print("<tr><td>" + rs.getString(94) + "</td></tr>");
        }
        if (rs.getString(95) != null) {
            out.print("<tr><td>" + rs.getString(95) + "</td></tr>");
        }
    %>
</table>
<p><strong>Inspecionei o local do serviço e verifiquei que o mesmo pode ser executado com segurança.
        Aprovo e autorizo o início do serviço.</strong></p>


<h2>Assinaturas</h2>
<table class="w3-table-all">
    <tr>
        <td>
            Emitente: <% out.print(rs.getShort(98)); %>
        </td>
        <td>
            Assinatura: ______________________
        </td>
    </tr>
    <tr>
        <td>
            Responsável pela execução: <% out.print(rs.getShort(97)); %>
        </td>
        <td>
            Assinatura: ______________________
        </td>
    </tr>
    <tr>
        <td>
            Responsável pela área/setor: <% out.print(rs.getShort(96)); %>
        </td>
        <td>
            Assinatura: ______________________
        </td>
    </tr>
</table>

<h2>Participantes</h2>
<table class="w3-table-all">
    <tr>
        <th>Nome:</th>
        <th>Empresa:</th>
        <th>P.A.</th>
    </tr>
    <%
        if (rs.getString(99).isEmpty() && rs.getString(100).isEmpty() && rs.getString(101).isEmpty()) {
        } else {
            out.print("<tr>"
                    + "        <td>" + rs.getString(99) + "</td>"
                    + "        <td>" + rs.getString(100) + "</td>"
                    + "        <td>" + rs.getString(101) + "</td>"
                    + "    </tr>");
        }

        if (rs.getString(102).isEmpty() && rs.getString(103).isEmpty() && rs.getString(104).isEmpty()) {
        } else {
            out.print("<tr>"
                    + "        <td>" + rs.getString(102) + "</td>"
                    + "        <td>" + rs.getString(103) + "</td>"
                    + "        <td>" + rs.getString(104) + "</td>"
                    + "    </tr>");
        }

        if (rs.getString(105).isEmpty() && rs.getString(106).isEmpty() && rs.getString(107).isEmpty()) {
        } else {
            out.print("<tr>"
                    + "        <td>" + rs.getString(105) + "</td>"
                    + "        <td>" + rs.getString(106) + "</td>"
                    + "        <td>" + rs.getString(107) + "</td>"
                    + "    </tr>");
        }

        if (rs.getString(108).isEmpty() && rs.getString(109).isEmpty() && rs.getString(110).isEmpty()) {
        } else {
            out.print("<tr>"
                    + "        <td>" + rs.getString(108) + "</td>"
                    + "        <td>" + rs.getString(109) + "</td>"
                    + "        <td>" + rs.getString(110) + "</td>"
                    + "    </tr>");
        }

        if (rs.getString(111).isEmpty() && rs.getString(112).isEmpty() && rs.getString(113).isEmpty()) {
        } else {
            out.print("<tr>"
                    + "        <td>" + rs.getString(111) + "</td>"
                    + "        <td>" + rs.getString(112) + "</td>"
                    + "        <td>" + rs.getString(113) + "</td>"
                    + "    </tr>");
        }

        if (rs.getString(114).isEmpty() && rs.getString(115).isEmpty() && rs.getString(116).isEmpty()) {
        } else {
            out.print("<tr>"
                    + "        <td>" + rs.getString(114) + "</td>"
                    + "        <td>" + rs.getString(115) + "</td>"
                    + "        <td>" + rs.getString(116) + "</td>"
                    + "    </tr>");
        }

        if (rs.getString(117).isEmpty() && rs.getString(118).isEmpty() && rs.getString(119).isEmpty()) {
        } else {
            out.print("<tr>"
                    + "        <td>" + rs.getString(117) + "</td>"
                    + "        <td>" + rs.getString(118) + "</td>"
                    + "        <td>" + rs.getString(119) + "</td>"
                    + "    </tr>");
        }

        if (rs.getString(120).isEmpty() && rs.getString(121).isEmpty() && rs.getString(122).isEmpty()) {
        } else {
            out.print("<tr>"
                    + "        <td>" + rs.getString(120) + "</td>"
                    + "        <td>" + rs.getString(121) + "</td>"
                    + "        <td>" + rs.getString(122) + "</td>"
                    + "    </tr>");
        }

    %>


</table>

<h2>Itens a serem verificados no fechamento da permissão</h2>
<p><strong>Assinale os items conforme fechamento da PT</strong></p>
<table class="w3-table-all">
    <tr>
        <th class="w3-border">Item</th>
        <th class="w3-border">Sim</th>
        <th class="w3-border">N/A</th>
    </tr>
    <tr>
        <td class="w3-border"> O local e ou equipamento de trabalho está limpo e organizado?</td>
        <td class="w3-border">

        </td>
        <td class="w3-border">

        </td>
    </tr>
    <tr>
        <td class="w3-border">Ferramentas, objetos, resíduos foram guardados e ou destinados
            corretamente?</td>
        <td class="w3-border">

        </td>
        <td class="w3-border">

        </td>
    </tr>
    <tr>
        <td class="w3-border">O escopo de trabalho foi concluído atendendo aos requisitos de Saúde,
            Segurança, Meio Ambiente e Qualidade?</td>
        <td class="w3-border">

        </td>
        <td class="w3-border">

        </td>
    </tr>
    <tr>
        <td class="w3-border">As proteções de máquinas (rotativas, elétricas, etc.) foram
            recolocadas?</td>
        <td class="w3-border">

        </td>
        <td class="w3-border">

        </td>
    </tr>
    <tr>
        <td class="w3-border">O local ou equipamento está operacional após a conclusão do serviço?
        </td>
        <td class="w3-border">

        </td>
        <td class="w3-border">

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