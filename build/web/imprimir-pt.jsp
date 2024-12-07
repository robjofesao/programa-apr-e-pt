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
                    out.print("Não aplicável");
                }
                if (rs.getString(15) == (null)) {
                } else {
                    out.print("PET - Espaço confinado");
                }
                if (rs.getString(16) == (null)) {
                } else {
                    out.print("Plano de içamento de cargas");
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
                + "            adequado ao tipo de serviço e disponível no local?</td>"
                + "        <td class=\"w3-border\">"
                + "           "
                + "        </td>"
                + "</tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">As pessoas estão protegidas contra a radiação com barreiras de"
                + "            proteção?</td>"
                + "        <td class=\"w3-border\">"
                + "            "
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">É necessário uma ventilação/exaustão?</td>"
                + "        <td class=\"w3-border\">"
                + ""
                + "</td>"
                + "</tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">Foi verificado na esmerilhadeira/lixadeira as condições da coifa de"
                + "            segurança, do rebolo, cabo de alimentação, disco adequado ao serviço?</td>"
                + "        <td class=\"w3-border\">"
                + ""
                + "        </td>"
                + ""
                + "    </tr>   "
                + " <tr>"
                + "        <td class=\"w3-border\">Foi verificado no conjunto oxiacetilênico e GLP, reguladores de"
                + "            pressão, manômetros, válvulas unidirecionais, dispositivo contra retrocesso de chama,"
                + "            ajuste de abraçadeiras das mangueiras, acendedor de fricção, cilindros na posição"
                + "            vertical, mangueiras sem emendas, ausência de graxa e óleo nos equipamentos?</td>"
                + "        <td class=\"w3-border\">"
                + "            "
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">Foi verificado na máquina de solda as condições do cabo de"
                + "            alimentação?</td>"
                + "        <td class=\"w3-border\">"
                + ""
                + "</td>"
                + "</tr>"
                + "    <tr>"
                + "       <td class=\"w3-border\">A peça a ser soldada está ligada ao pólo de retorno (terra) da máquina"
                + "            de solda?</td>"
                + "        <td class=\"w3-border\">"
                + "           "
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">Bandejas de cabos elétricos, tubulações de fibra de vidro e painéis"
                + "            estão protegidos?</td>"
                + "        <td class=\"w3-border\">"
                + "           "
                + "        </td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">As aberturas em pisos, paredes, portas e drenos foram fechadas,"
                + "cobertas ou protegidas?</td>"
                + "        <td class=\"w3-border\">"
                + ""
                + "</td>"
                + "    </tr>"
                + "    <tr>"
                + "        <td class=\"w3-border\">As mangueiras, extensões e fios elétricos estão protegidos contra"
                + "tráfego de veículos e de pessoas, quedas de objetos, contato com água, superfícies"
                + "aquecidas ou substâncias químicas?</td>"
                + "        <td class=\"w3-border\">"
                + ""
                + "        </td>"
                + "    </tr>"
                + "</table>");

    }


%>


<!-- serviço em altura -->
<h2>TRABALHO EM ALTURA</h2>
<table class="w3-table-all">
    <tr>
        <th class="w3-border">Item</th>
        <th class="w3-border">Resposta</th>

    </tr>
    <tr>
        <td class="w3-border">Foi revista a hierarquia de proteção contra queda e selecionado o modo
            mais seguro para o desempenho da atividade?</td>
        <td class="w3-border">
            <% %>
        </td>

    </tr>
    <tr>
        <td class="w3-border">A pessoa de contato (vigilante de emergência) sabe o modo de
            comunicação em caso de emergência?</td>
        <td class="w3-border">
            <% %>
        </td>

    </tr>
    <tr>
        <td class="w3-border">Foi verificado a possibilidade de o usário estar 100% conectado ao
            ponto de ancoragem e o mesmo foi roientado</td>
        <td class="w3-border">
            <% %>
        </td>

    </tr>
    <tr>
        <td class="w3-border">O ponto de ancoragem (não projetado) suportará 2.268kg?</td>
        <td class="w3-border">
            <% %>
        </td>

    </tr>
    <tr>
        <td class="w3-border">O Executante está utilizando os EPI's necessários para trabalho em
            altura?</td>
        <td class="w3-border">
            <% %>
        </td>

    </tr>
    <tr>
        <td class="w3-border">O ponto de ancoragem (projetado) foi aprovado por um profissional
            legalmente habilitado?</td>
        <td class="w3-border">
            <% %>
        </td>

    </tr>
    <tr>
        <td class="w3-border">O sistema de retenção foi ajustado de modo a evitar que o executante
            tenha uma queda livre maior que 1,80m?</td>
        <td class="w3-border">
            <% %>
        </td>

    </tr>
    <tr>
        <td class="w3-border">Em caso de queda o talabarte/travaquedas foi instalado de modo que o
            usuário não possa bater contra instalações/equipamentos abaixo ou dos lados (efeito
            pêndulo)?</td>
        <td class="w3-border">
            <% %>
        </td>

    </tr>
    <tr>
        <td class="w3-border">Todos os equipamentos usados na retenção de quedas foram inspecionados
            conforme plano de inspeção e estão aprovados?</td>
        <td class="w3-border">
            <% %>
        </td>

    </tr>
</table>
<!-- serviço em altura -->
<h2>ESCAVAÇÃO E DEMOLIÇÃO</h2>
<table class="w3-table-all">
    <tr>
        <th class="w3-border">
            Item
        </th>
        <th class="w3-border">
            Resposta
        </th>
    </tr>
    <tr>
        <td class="w3-border">
            A engenharia realizou uma inspeção ou foi consultada quanto a passagem de tulações
            elétricas, rede de esgoto e/ou possibilidade de colapso da estrutura?
        </td>
        <td class="w3-border">
            <% %>
        </td>
    </tr>
    <tr>
        <td class="w3-border">
            Foi determinado a distância mínima de 3m do equipamento bate estaca da redes elétricas?
            O bate estaca foi travado para evitar o seu tombamento?
        </td>
        <td class="w3-border">
            <% %>
        </td>
    </tr>
    <tr>
        <td class="w3-border">
            Os riscos subterraneos (tubulações elétricas) foram identificados, desativados e o
            procedimento de LOTO foi aplicado?
        </td>
        <td class="w3-border">
            <% %>
        </td>
    </tr>
    <tr>
        <td class="w3-border">
            A iluminação é suficiente e as condições metereológicas são adequadas? Foi removido
            vidros, janelas, telhados, etc. da estrutura a ser demolida?
        </td>
        <td class="w3-border">
            <% %>
        </td>
    </tr>
    <tr>
        <td class="w3-border">
            Para evitar desmoronamento: Foi verificado o tipo de terreno a ser escavado? Foi
            determinado o ângulo da escavação, para profundidade superior a 1,20m?
        </td>
        <td class="w3-border">
            <% %>
        </td>
    </tr>
    <tr>
        <td class="w3-border">
            Foi previsto o escoramento da parede da escavação com profundidade maior que 1,20m? Em
            demolição, é necessário o escoramento de paredes, pisos ou lajes?
        </td>
        <td class="w3-border">
            <% %>
        </td>
    </tr>
    <tr>
        <td class="w3-border">
            Foi avaliado a necessidade de permissão de espaço confinado? Foi prevista escada de
            acesso para escavação superior a 1,20m?
        </td>
        <td class="w3-border">
            <% %>
        </td>
    </tr>
    <tr>
        <td class="w3-border">
            O trânsito do local foi interrompido ou desviado? Existe algum tipo de substância
            química perigosa (gases, explosivos, materiais inflamáveis) na demolição?
        </td>
        <td class="w3-border">
            <% %>
        </td>
    </tr>
</table>
<!-- Serviço com Hidrojateamento -->
<h2>SERVIÇO COM HIDROJATEAMENTO</h2>
<table class="table w3-table-all">
    <tr>
        <th class="w3-border">
            Item
        </th>
        <th class="w3-border">
            Resposta
        </th>
    </tr>
    <tr>
        <td class="w3-border">
            Os colaboradores foram orientados sobre os riscos referentes à atividade?
        </td>
        <td class="w3-border">
            <% %>
        </td>
    </tr>
    <tr>
        <td class="w3-border">
            A Atividade será realizada em espaço confinado? Em caso afirmativo, foi emitida PET?
        </td>
        <td class="w3-border">
            <% %>
        </td>
    </tr>
</table>

<!-- ABERTURA DE LINHAS E EQUIPAMENTOS -->
<h2>ABERTURA DE LINHAS E EQUIPAMENTOS</h2>
<table class="table w3-table-all">
    <tr>
        <th class="w3-border">
            Item
        </th>
        <th class="w3-border">
            Resposta
        </th>
    </tr>
    <tr>
        <td class="w3-border">
            Foram analisados os riscos envolvidos e precauções necessárias?
        </td>
        <td class="w3-border">
            <% %>
        </td>
    </tr>
    <tr>
        <td class="w3-border">
            Há necessidade de duplo bloqueio?
        </td>
        <td class="w3-border">
            <% %>
        </td>
    </tr>
    <tr>
        <td class="w3-border">
            Foi utilizado algum método de descontaminação ou purga do sistema (drenagem, sopragem,
            lavagem, despressurização ou resfriamento) ?
        </td>
        <td class="w3-border">
            <% %>
        </td>
    </tr>
    <tr>
        <td class="w3-border">
            Serviço em linha ou equipamento com material perigoso?
        </td>
        <td class="w3-border">
            <% %>
        </td>
    </tr>

</table>

<!-- MOVIMENTAÇÃO E IÇAMENTO DE CARGAS -->
<h2>MOVIMENTAÇÃO E IÇAMENTO DE CARGAS</h2>
<table class="table w3-table-all">
    <tr>
        <th class="w3-border">
            Item
        </th>
        <th class="w3-border">
            Resposta
        </th>
    </tr>
    <tr>
        <td class="w3-border">
            Verificado se o equipamento possui tabela de carga em português na cabine do operador? O
            operador verificou a tabela para esta manobra?
        </td>
        <td class="w3-border">
            <% %>
        </td>
    </tr>
    <tr>
        <td class="w3-border">
            Os olhais e pontos de pegas estão de acordo com a capacidade de carga? Cintas estão
            definidas com a capacidade por códigos de cores e as etiquetas estão legíveis? Os cabos
            de aço estão em perfeitas condições de uso com os grampos adequados?
        </td>
        <td class="w3-border">
            <% %>
        </td>
    </tr>
    <tr>
        <td class="w3-border">
            Apresentado check list de inspeção de pré-uso dos equipamentos, se necessário?
        </td>
        <td class="w3-border">
            <% %>
        </td>
    </tr>
    <tr>
        <td class="w3-border">
            O guindaste/guindauto está patolado e nivelado sobre calços de madeira e solo firme
            longe de caixas de passagens e ou redes pluviais?
        </td>
        <td class="w3-border">
            <% %>
        </td>
    </tr>
    <tr>
        <td class="w3-border">
            A área foi isolada e sinalizada e pessoas estão fora de zona de risco? Existe corda para
            ser utilizada na movimentação da carga, neutralizando o contato com as mãos?
        </td>
        <td class="w3-border">
            <% %>
        </td>
    </tr>
    <tr>
        <td class="w3-border">
            O raio de movimentação da lança e carga estão livres de obstáculos e redes elétricas?
        </td>
        <td class="w3-border">
            <% %>
        </td>
    </tr>
    <tr>
        <td class="w3-border">
            Foram checadas as condições do tempo (vento, chuva e descargas atmosféricas) que podem
            interferir na movimentação da carga?
        </td>
        <td class="w3-border">
            <% %>
        </td>
    </tr>
</table>

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
    <% %>
</table>
<p><strong>Inspecionei o local do serviço e verifiquei que o mesmo pode ser executado com segurança.
        Aprovo e autorizo o início do serviço.</strong></p>


<h2>Assinaturas</h2>
<table class="w3-table-all">
    <tr>
        <td>
            Emitente: <%%>
        </td>
        <td>
            Assinatura: ______________________
        </td>
    </tr>
    <tr>
        <td>
            Responsável pela execução: <%%>
        </td>
        <td>
            Assinatura: ______________________
        </td>
    </tr>
    <tr>
        <td>
            Responsável pela área/setor: <%%>
        </td>
        <td>
            Assinatura: ______________________
        </td>
    </tr>
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