<%-- 
    Document   : salvar-pet
    Created on : 20 de out. de 2024, 05:17:10
    Author     : zorinportable
--%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
//capiturando os campos do form

            String departamento = request.getParameter("pet-departamento");

            String equipLocal = request.getParameter("pet-equip-local");

            String dataAbertura = request.getParameter("data-abertura-pet");

            String horaAbertura = request.getParameter("hora-abertura-pet");

            String descDetServ = request.getParameter("desc-det-serv-pet");

            String localEspServ = request.getParameter("local-esp-serv-pet");

            String oxigenio1 = request.getParameter("oxigenio-1-pet");

            String gasesVapTox1 = request.getParameter("gases-vap-tox-1-pet");

            String inflamaveis1 = request.getParameter("inflamaveis-1-pet");

            String poeirasFumNev1 = request.getParameter("poeiras-fum-nev-1-pet");

            String oxigenio2 = request.getParameter("oxigenio-2-pet");

            String gasesVapTox2 = request.getParameter("gases-vap-tox-2-pet");

            String inflamaveis2 = request.getParameter("inflamaveis-2-pet");

            String poeirasFumNev2 = request.getParameter("poeiras-fum-nev-2-pet");

            String areasInspIsol = request.getParameter("areas-insp-isol-pet");

            String bloqTravEt = request.getParameter("bloq-trav-et-pet");

            String ventExaust = request.getParameter("vent-exaust-pet");

            String treinamento = request.getParameter("treinamento-pet");

            String equipAprov = request.getParameter("equip-aprov-pet");

            String epiAprov = request.getParameter("epi-aprov-pet");

            String cintoLinhaTrab = request.getParameter("cinto-linha-trab-pet");

            String purgaLav = request.getParameter("purga-lav-pet");

            String isolamento = request.getParameter("isolamento-pet");

            String iluminacao = request.getParameter("iluminacao-pet");

            String comunicacao = request.getParameter("comunicacao-pet");

            String extintores = request.getParameter("extintores-pet");

            String cintoResgate = request.getParameter("cinto-resgate-pet");

            String equipMovVert = request.getParameter("equip-mov-vert-pet");

            String permAQuente = request.getParameter("perm-a-quente-pet");

            String petProcedEmergResg = request.getParameter("pet-proced-emerg-resg");

            String pressaoArterial1 = request.getParameter("pressao-arterial-1-pet");

            //informações dos colaboradores
            String matriculaColab1 = request.getParameter("matricula-colab-1-pet");

            String nomeColab1 = request.getParameter("nome-colab-1-pet");

            String pressaoArterial2 = request.getParameter("pressao-arterial-2-pet");

            String matriculaColab2 = request.getParameter("matricula-colab-2-pet");

            String nomeColab2 = request.getParameter("nome-colab-2-pet");

            String pressaoArterial3 = request.getParameter("pressao-arterial-3-pet");

            String matriculaColab3 = request.getParameter("matricula-colab-3-pet");

            String nomeColab3 = request.getParameter("nome-colab-3-pet");

            String pressaoArterial4 = request.getParameter("pressao-arterial-4-pet");

            String matriculaColab4 = request.getParameter("matricula-colab-4-pet");

            String nomeColab4 = request.getParameter("nome-colab-4-pet");

            String pressaoArterial5 = request.getParameter("pressao-arterial-5-pet");

            String matriculaColab5 = request.getParameter("matricula-colab-5-pet");

            String nomeColab5 = request.getParameter("nome-colab-5-pet");

            String pressaoArterial6 = request.getParameter("pressao-arterial-6-pet");

            String matriculaColab6 = request.getParameter("matricula-colab-6-pet");

            String nomeColab6 = request.getParameter("nome-colab-6-pet");

            String pressaoArterial7 = request.getParameter("pressao-arterial-7-pet");

            String matriculaColab7 = request.getParameter("matricula-colab-7-pet");

            String nomeColab7 = request.getParameter("nome-colab-7-pet");

            String pressaoArterial8 = request.getParameter("pressao-arterial-8-pet");

            String matriculaColab8 = request.getParameter("matricula-colab-8-pet");

            String nomeColab8 = request.getParameter("nome-colab-8-pet");

            // Capturando os parâmetros dos vigias
            String pressaoArterialV1 = request.getParameter("pressao-arterial-v1-pet");

            String matriculaColabV1 = request.getParameter("matricula-colab-v1-pet");

            String nomeColabV1 = request.getParameter("nome-colab-v1-pet");

            String pressaoArterialV2 = request.getParameter("pressao-arterial-v2-pet");

            String matriculaColabV2 = request.getParameter("matricula-colab-v2-pet");

            String nomeColabV2 = request.getParameter("nome-colab-v2-pet");

            //informações adicionais
            String infoAdicionais = request.getParameter("pet-info-adicionais");

            try {
                //fazer conexÃ£o com o banco de dados Connection connection;
                PreparedStatement ps;
                Connection connection;
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/parbd", "root",
                        "");
                ps = connection.prepareStatement("INSERT INTO parbd.PET_reg ("
                        + "pet_departamento, "
                        + "pet_equip_local, "
                        + "data_abertura, "
                        + "hora_abertura, "
                        + "desc_det_serv, "
                        + "local_esp_serv, "
                        + "oxigenio_1, "
                        + "gases_vap_tox_1, "
                        + "inflamaveis_1, "
                        + "poeiras_fum_nev_1, "
                        + "oxigenio_2, "
                        + "gases_vap_tox_2, "
                        + "inflamaveis_2, "
                        + "poeiras_fum_nev_2, "
                        + "areas_insp_isol, "
                        + "bloq_trav_et, "
                        + "vent_exaust, "
                        + "treinamento, "
                        + "equip_aprov, "
                        + "epi_aprov, "
                        + "cinto_linha_trab, "
                        + "purga_lav, "
                        + "isolamento, "
                        + "iluminacao, "
                        + "comunicacao, "
                        + "extintores, "
                        + "cinto_resgate, "
                        + "equip_mov_vert, "
                        + "perm_a_quente, "
                        + "pet_proced_emerg_resg, "
                        + "pressao_arterial_1, "
                        + "matricula_colab_1, "
                        + "nome_colab_1, "
                        + "pressao_arterial_2, "
                        + "matricula_colab_2, "
                        + "nome_colab_2, "
                        + "pressao_arterial_3, "
                        + "matricula_colab_3, "
                        + "nome_colab_3, "
                        + "pressao_arterial_4, "
                        + "matricula_colab_4, "
                        + "nome_colab_4, "
                        + "pressao_arterial_5, "
                        + "matricula_colab_5, "
                        + "nome_colab_5, "
                        + "pressao_arterial_6, "
                        + "matricula_colab_6, "
                        + "nome_colab_6, "
                        + "pressao_arterial_7, "
                        + "matricula_colab_7, "
                        + "nome_colab_7, "
                        + "pressao_arterial_8, "
                        + "matricula_colab_8, "
                        + "nome_colab_8, "
                        + "pressao_arterial_v1, "
                        + "matricula_colab_v1, "
                        + "nome_colab_v1, "
                        + "pressao_arterial_v2, "
                        + "matricula_colab_v2, "
                        + "nome_colab_v2, "
                        + "pet_info_adicionais) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");

                ps.setString(1, departamento);

                ps.setString(2, equipLocal);

                ps.setString(3, dataAbertura); // Convertendo String para Date

                ps.setString(4, horaAbertura); // Convertendo String para Time

                ps.setString(5, descDetServ);

                ps.setString(6, localEspServ);

                ps.setString(7, oxigenio1); // Convertendo String para Double

                ps.setString(8, gasesVapTox1); // Convertendo String para Double

                ps.setString(9, inflamaveis1); // Convertendo String para Double

                ps.setString(10, poeirasFumNev1); // Convertendo String para Double

                ps.setString(11, oxigenio2); // Convertendo String para Double

                ps.setString(12, gasesVapTox2); // Convertendo String para Double

                ps.setString(13, inflamaveis2); // Convertendo String para Double

                ps.setString(14, poeirasFumNev2); // Convertendo String para Double

                ps.setString(15, areasInspIsol);

                ps.setString(16, bloqTravEt);

                ps.setString(17, ventExaust);

                ps.setString(18, treinamento);

                ps.setString(19, equipAprov);

                ps.setString(20, epiAprov);

                ps.setString(21, cintoLinhaTrab);

                ps.setString(22, purgaLav);

                ps.setString(23, isolamento);

                ps.setString(24, iluminacao);

                ps.setString(25, comunicacao);

                ps.setString(26, extintores);

                ps.setString(27, cintoResgate);

                ps.setString(28, equipMovVert);

                ps.setString(29, permAQuente);

                ps.setString(30, petProcedEmergResg);

                ps.setString(31, pressaoArterial1); // Convertendo String para Double

                ps.setString(32, matriculaColab1); // Convertendo String para Integer

                ps.setString(33, nomeColab1);

                ps.setString(34, pressaoArterial2); // Convertendo String para Double

                ps.setString(35, matriculaColab2); // Convertendo String para Integer

                ps.setString(36, nomeColab2);

                ps.setString(37, pressaoArterial3); // Convertendo String para Double

                ps.setString(38, matriculaColab3); // Convertendo String para Integer

                ps.setString(39, nomeColab3);

                ps.setString(40, pressaoArterial4); // Convertendo String para Double

                ps.setString(41, matriculaColab4); // Convertendo String para Integer

                ps.setString(42, nomeColab4);

                ps.setString(43, pressaoArterial5); // Convertendo String para Double

                ps.setString(44, matriculaColab5); // Convertendo String para Integer

                ps.setString(45, nomeColab5);

                ps.setString(46, pressaoArterial6); // Convertendo String para Double

                ps.setString(47, matriculaColab6); // Convertendo String para Integer

                ps.setString(48, nomeColab6);

                ps.setString(49, pressaoArterial7); // Convertendo String para Double

                ps.setString(50, matriculaColab7); // Convertendo String para Integer

                ps.setString(51, nomeColab7);

                ps.setString(52, pressaoArterial8); // Convertendo String para Double

                ps.setString(53, matriculaColab8); // Convertendo String para Integer

                ps.setString(54, nomeColab8);

                ps.setString(55, pressaoArterialV1); // Convertendo String para Double

                ps.setString(56, matriculaColabV1); // Convertendo String para Integer

                ps.setString(57, nomeColabV1);

                ps.setString(58, pressaoArterialV2); // Convertendo String para Double

                ps.setString(59, matriculaColabV2); // Convertendo String para Integer

                ps.setString(60, nomeColabV2);

                ps.setString(61, infoAdicionais);

                ps.executeUpdate();

                connection.close();
                out.print("Registros incluidos com sucesso!");

            } catch (Exception e) {
                e.printStackTrace();
            }

        %>
    </body>
</html>
