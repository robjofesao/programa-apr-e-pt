<%@page import="java.sql.*" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>
        <% //declarando as variáveis e ja recebendo os valores String
            String setor_apr = request.getParameter("setor_apr");
            String data_abertura_apr = request.getParameter("data-abertura-apr");
                String desc_serv_apr = request.getParameter("desc-serv-apr");
            String colab_proprios = request.getParameter("colab_proprios"),
                    tipo_serv_mov_cargas = request.getParameter("tipo_serv_mov_cargas"),
                    tipo_serv_eletricos = request.getParameter("tipo_serv_eletricos"),
                    colab_terceiros = request.getParameter("colab_terceiros"),
                    tipo_serv_mecanicos = request.getParameter("tipo_serv_mecanicos"),
                    tipo_serv_a_quente = request.getParameter("tipo_serv_a_quente"),
                    tipo_serv_limpeza = request.getParameter("tipo_serv_limpeza"),
                    tipo_serv_operacao = request.getParameter("tipo_serv_operacao"),
                    tipo_serv_altura = request.getParameter("tipo_serv_altura"),
                    tipo_serv_espaco_conf = request.getParameter("tipo_serv_espaco_conf");
            String tipo_serv_outroser = request.getParameter("tipo_serv_espaco_conf");
            String riscos_ava_corte_oxi = request.getParameter("riscos_ava_corte_oxi"),
                    medida_controle_corte_oxicorte = request.getParameter("medida_controle_corte_oxicorte"),
                    riscos_ava_corpo_estranho = request.getParameter("riscos_ava_corpo_estranho"),
                    medida_controle_corpo_estranho = request.getParameter("medida_controle_corpo_estranho"),
                    riscos_ava_ruido = request.getParameter("riscos_ava_ruido"),
                    medida_controle_ruido = request.getParameter("medida_controle_ruido"),
                    riscos_ava_perf_maos = request.getParameter("riscos_ava_perf_maos"),
                    medida_controle_perf_maos = request.getParameter("medida_controle_perf_maos"),
                    riscos_ava_queda_mesmo_niv = request.getParameter("riscos_ava_queda_mesmo_niv"),
                    medida_controle_queda_mesmo_niv = request.getParameter("medida_controle_queda_mesmo_niv"),
                    riscos_ava_queda_obj = request.getParameter("riscos_ava_queda_obj"),
                    medida_controle_queda_obj = request.getParameter("medida_controle_queda_obj"),
                    riscos_ava_mont_andaime = request.getParameter("riscos_ava_mont_andaime"),
                    medida_controle_mont_andaime = request.getParameter("medida_controle_mont_andaime"),
                    riscos_ava_trab_altura = request.getParameter("riscos_ava_trab_altura"),
                    medida_controle_trab_altura = request.getParameter("medida_controle_trab_altura"),
                    riscos_ava_queimadura = request.getParameter("riscos_ava_queimadura"),
                    medida_controle_queimadura = request.getParameter("medida_controle_queimadura"),
                    riscos_ava_sinistro_trans = request.getParameter("riscos_ava_sinistro_trans"),
                    medida_controle_sinistro_trans = request.getParameter("medida_controle_sinistro_trans"),
                    riscos_ava_icamento = request.getParameter("riscos_ava_icamento"),
                    medida_controle_icamento = request.getParameter("medida_controle_icamento"),
                    riscos_ava_espaco_conf = request.getParameter("riscos_ava_espaco_conf"),
                    medida_controle_espaco_conf = request.getParameter("medida_controle_espaco_conf"),
                    riscos_ava_iluminacao = request.getParameter("riscos_ava_iluminacao"),
                    medida_controle_iluminacao = request.getParameter("medida_controle_iluminacao"),
                    riscos_ava_lesao_pe_mao = request.getParameter("riscos_ava_lesao_pe_mao"),
                    medida_controle_lesao_pe_mao = request.getParameter("medida_controle_lesao_pe_mao"),
                    riscos_ava_calor_excessivo = request.getParameter("riscos_ava_calor_excessivo"),
                    medida_controle_calor_excessivo = request.getParameter("medida_controle_calor_excessivo"),
                    riscos_ava_poeiras_part = request.getParameter("riscos_ava_poeiras_part"),
                    medida_controle_poeiras_part = request.getParameter("medida_controle_poeiras_part"),
                    riscos_ava_manu_prod_quim = request.getParameter("riscos_ava_manu_prod_quim"),
                    medida_controle_manu_prod_quim = request.getParameter("medida_controle_manu_prod_quim"),
                    riscos_ava_proj_mat_inca = request.getParameter("riscos_ava_proj_mat_inca"),
                    medida_controle_proj_mat_inca = request.getParameter("medida_controle_proj_mat_inca"),
                    riscos_ava_lambada_mangueira = request.getParameter("riscos_ava_lambada_mangueira"),
                    medida_controle_lambada_mangueira = request.getParameter("medida_controle_lambada_mangueira"),
                    riscos_ava_escav_demol = request.getParameter("riscos_ava_escav_demol"),
                    medida_controle_escav_demol = request.getParameter("medida_controle_escav_demol"),
                    riscos_ava_limp_man_equip_eletricos = request.getParameter("riscos_ava_limp_man_equip_eletricos"),
                    medida_controle_limp_man_equip_eletricos = request.getParameter("medida_controle_limp_man_equip_eletricos"),
                    riscos_ava_mant_limp_squip_mec = request.getParameter("riscos_ava_mant_limp_squip_mec"),
                    medida_controle_mant_limp_squip_mec = request.getParameter("medida_controle_mant_limp_squip_mec"),
                    riscos_ava_solda_contam = request.getParameter("riscos_ava_solda_contam"),
                    medida_controle_solda_contam = request.getParameter("medida_controle_solda_contam"),
                    riscos_ava_limp_alta_temp = request.getParameter("riscos_ava_limp_alta_temp"),
                    medida_controle_limp_alta_temp = request.getParameter("medida_controle_limp_alta_temp"),
                    riscos_ava_desm_mont_estru = request.getParameter("riscos_ava_desm_mont_estru"),
                    medida_controle_desm_mont_estru = request.getParameter("medida_controle_desm_mont_estru"),
                    riscos_ava_sopragem_linha = request.getParameter("riscos_ava_sopragem_linha"),
                    medida_controle_sopragem_linha = request.getParameter("medida_controle_sopragem_linha"),
                    riscos_ava_limp_lixadeira = request.getParameter("riscos_ava_limp_lixadeira"),
                    medida_controle_limp_lixadeira = request.getParameter("medida_controle_limp_lixadeira"),
                    riscos_ava_romp_adut = request.getParameter("riscos_ava_romp_adut"),
                    medida_controle_romp_adut = request.getParameter("medida_controle_romp_adut"),
                    riscos_ava_comissionamento = request.getParameter("riscos_ava_comissionamento"),
                    medida_controle_comissionamento = request.getParameter("medida_controle_comissionamento"),
                    riscos_ava_acop_tub_sub = request.getParameter("riscos_ava_acop_tub_sub"),
                    medida_controle_acop_tub_sub = request.getParameter("medida_controle_acop_tub_sub"),
                    riscos_ava_desabamento = request.getParameter("riscos_ava_desabamento"),
                    medida_controle_desabamento = request.getParameter("medida_controle_desabamento"),
                    riscos_ava_avaliacao_riscos = request.getParameter("riscos_ava_avaliacao_riscos"),
                    medida_controle_avaliacao_riscos = request.getParameter("medida_controle_avaliacao_riscos"),
                    riscos_ava_animais_peconhe = request.getParameter("riscos_ava_animais_peconhe"),
                    medida_controle_animais_peconhe = request.getParameter("medida_controle_animais_peconhe");
            String recomendacoes_complementares = request.getParameter("recomendacoes_complementares");
            String reuniao_serv_1 = request.getParameter("reuniao_serv_1"),
                    reuniao_serv_2 = request.getParameter("reuniao_serv_2"),
                    reuniao_serv_3 = request.getParameter("reuniao_serv_3"),
                    reuniao_serv_4 = request.getParameter("reuniao_serv_4"),
                    reuniao_serv_5 = request.getParameter("reuniao_serv_5"),
                    reuniao_serv_6 = request.getParameter("reuniao_serv_6");
            
            String data_reuniao_apr = request.getParameter("data_reuniao_apr");
            String componentes_mat_1 = request.getParameter("componentes_mat_1"),
                    componentes_mat_2 = request.getParameter("componentes_mat_2"),
                    componentes_mat_3 = request.getParameter("componentes_mat_3"),
                    componentes_mat_4 = request.getParameter("componentes_mat_4"),
                    componentes_mat_5 = request.getParameter("componentes_mat_5"),
                    componentes_mat_6 = request.getParameter("componentes_mat_6"),
                    componentes_mat_7 = request.getParameter("componentes_mat_7"),
                    componentes_mat_8 = request.getParameter("componentes_mat_8"),
                    componentes_mat_9 = request.getParameter("componentes_mat_9"),
                    componentes_mat_10 = request.getParameter("componentes_mat_10"),
                    componentes_mat_11 = request.getParameter("componentes_mat_11"),
                    componentes_mat_12 = request.getParameter("componentes_mat_12"),
                    componentes_nome_1 = request.getParameter("componentes_nome_1"),
                    componentes_nome_2 = request.getParameter("componentes_nome_2"),
                    componentes_nome_3 = request.getParameter("componentes_nome_3"),
                    componentes_nome_4 = request.getParameter("componentes_nome_4"),
                    componentes_nome_5 = request.getParameter("componentes_nome_5"),
                    componentes_nome_6 = request.getParameter("componentes_nome_6"),
                    componentes_nome_7 = request.getParameter("componentes_nome_7"),
                    componentes_nome_8 = request.getParameter("componentes_nome_8"),
                    componentes_nome_9 = request.getParameter("componentes_nome_9"),
                    componentes_nome_10 = request.getParameter("componentes_nome_10"),
                    componentes_nome_11 = request.getParameter("componentes_nome_11"),
                    componentes_nome_12 = request.getParameter("componentes_nome_12"),
                    matricula_nome_resp_area = request.getParameter("matricula_nome_resp_area"),
                    matricula_nome_resp_exec = request.getParameter("matricula_nome_resp_exec"),
                    responsavel_contratada = request.getParameter("responsavel_contratada"),
                    sst_resp = request.getParameter("sst_resp"),
                    solicitante_serv = request.getParameter("solicitante_serv");
            try {
                //fazer conexao com o banco de dados Connection connection;
                PreparedStatement ps;
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/parbd", "root", "");
                ps = connection.prepareStatement("INSERT INTO parbd.apr_reg (descricao_atividade_apr, setor_apr, data_abertura_apr, colab_proprios, colab_terceiros, tipo_serv_mov_cargas, tipo_serv_eletricos, tipo_serv_mecanicos, tipo_serv_a_quente, tipo_serv_limpeza, tipo_serv_operacao, tipo_serv_altura, tipo_serv_espaco_conf, tipo_serv_outroser, riscos_ava_corte_oxi, riscos_ava_corpo_estranho, riscos_ava_ruido, riscos_ava_perf_maos, riscos_ava_queda_mesmo_niv, riscos_ava_queda_obj, riscos_ava_mont_andaime, riscos_ava_trab_altura, riscos_ava_queimadura, riscos_ava_sinistro_trans, riscos_ava_icamento, riscos_ava_espaco_conf, riscos_ava_iluminacao, riscos_ava_lesao_pe_mao, riscos_ava_calor_excessivo, riscos_ava_poeiras_part, riscos_ava_manu_prod_quim, riscos_ava_proj_mat_inca, riscos_ava_lambada_mangueira, riscos_ava_escav_demol, riscos_ava_limp_man_equip_eletricos, riscos_ava_mant_limp_squip_mec, riscos_ava_solda_contam, riscos_ava_limp_alta_temp, riscos_ava_desm_mont_estru, riscos_ava_sopragem_linha, riscos_ava_limp_lixadeira, riscos_ava_romp_adut, riscos_ava_comissionamento, riscos_ava_acop_tub_sub, riscos_ava_desabamento, riscos_ava_avaliacao_riscos, riscos_ava_animais_peconhe, recomendacoes_complementares, reuniao_serv_1, reuniao_serv_2, reuniao_serv_3, reuniao_serv_4, reuniao_serv_5, reuniao_serv_6, data_reuniao, componentes_mat_1, componentes_mat_2, componentes_mat_3, componentes_mat_4, componentes_mat_5, componentes_mat_6, componentes_mat_7, componentes_mat_8, componentes_mat_9, componentes_mat_10, componentes_mat_11, componentes_mat_12, componentes_nome_1, componentes_nome_2, componentes_nome_3, componentes_nome_4, componentes_nome_5, componentes_nome_6, componentes_nome_7, componentes_nome_8, componentes_nome_9, componentes_nome_10, componentes_nome_11, componentes_nome_12, matricula_nome_resp_area, matricula_nome_resp_exec, responsavel_contratada, sst_resp, solicitante_serv, medida_controle_corte_oxicorte, medida_controle_corpo_estranho, medida_controle_ruido, medida_controle_perf_maos, medida_controle_queda_mesmo_niv, medida_controle_queda_obj, medida_controle_mont_andaime, medida_controle_trab_altura, medida_controle_queimadura, medida_controle_sinistro_trans, medida_controle_icamento, medida_controle_espaco_conf, medida_controle_iluminacao, medida_controle_lesao_pe_mao, medida_controle_calor_excessivo, medida_controle_poeiras_part, medida_controle_manu_prod_quim, medida_controle_proj_mat_inca, medida_controle_lambada_mangueira, medida_controle_escav_demol, medida_controle_limp_man_equip_eletricos, medida_controle_mant_limp_squip_mec, medida_controle_solda_contam, medida_controle_limp_alta_temp, medida_controle_desm_mont_estru, medida_controle_sopragem_linha, medida_controle_limp_lixadeira, medida_controle_romp_adut, medida_controle_comissionamento, medida_controle_acop_tub_sub, medida_controle_desabamento, medida_controle_avaliacao_riscos, medida_controle_animais_peconhe) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");
                ps.setString(1, desc_serv_apr);
                ps.setString(2, setor_apr);
                ps.setString(3, data_abertura_apr);
                ps.setString(4, colab_proprios);
                ps.setString(5, colab_terceiros);
                ps.setString(6, tipo_serv_mov_cargas);
                ps.setString(7, tipo_serv_eletricos);
                ps.setString(8, tipo_serv_mecanicos);
                ps.setString(9, tipo_serv_a_quente);
                ps.setString(10, tipo_serv_limpeza);
                ps.setString(11, tipo_serv_operacao);
                ps.setString(12, tipo_serv_altura);
                ps.setString(13, tipo_serv_espaco_conf);
                ps.setString(14, tipo_serv_outroser);
                ps.setString(15, riscos_ava_corte_oxi);
                ps.setString(16, riscos_ava_corpo_estranho);
                ps.setString(17, riscos_ava_ruido);
                ps.setString(18, riscos_ava_perf_maos);
                ps.setString(19, riscos_ava_queda_mesmo_niv);
                ps.setString(20, riscos_ava_queda_obj);
                ps.setString(21, riscos_ava_mont_andaime);
                ps.setString(22, riscos_ava_trab_altura);
                ps.setString(23, riscos_ava_queimadura);
                ps.setString(24, riscos_ava_sinistro_trans);
                ps.setString(25, riscos_ava_icamento);
                ps.setString(26, riscos_ava_espaco_conf);
                ps.setString(27, riscos_ava_iluminacao);
                ps.setString(28, riscos_ava_lesao_pe_mao);
                ps.setString(29, riscos_ava_calor_excessivo);
                ps.setString(30, riscos_ava_poeiras_part);
                ps.setString(31, riscos_ava_manu_prod_quim);
                ps.setString(32, riscos_ava_proj_mat_inca);
                ps.setString(33, riscos_ava_lambada_mangueira);
                ps.setString(34, riscos_ava_escav_demol);
                ps.setString(35, riscos_ava_limp_man_equip_eletricos);
                ps.setString(36, riscos_ava_mant_limp_squip_mec);
                ps.setString(37, riscos_ava_solda_contam);
                ps.setString(38, riscos_ava_limp_alta_temp);
                ps.setString(39, riscos_ava_desm_mont_estru);
                ps.setString(40, riscos_ava_sopragem_linha);
                ps.setString(41, riscos_ava_limp_lixadeira);
                ps.setString(42, riscos_ava_romp_adut);
                ps.setString(43, riscos_ava_comissionamento);
                ps.setString(44, riscos_ava_acop_tub_sub);
                ps.setString(45, riscos_ava_desabamento);
                ps.setString(46, riscos_ava_avaliacao_riscos);
                ps.setString(47, riscos_ava_animais_peconhe);
                ps.setString(48, recomendacoes_complementares);
                ps.setString(49, reuniao_serv_1);
                ps.setString(50, reuniao_serv_2);
                ps.setString(51, reuniao_serv_3);
                ps.setString(52, reuniao_serv_4);
                ps.setString(53, reuniao_serv_5);
                ps.setString(54, reuniao_serv_6);
                ps.setString(55, data_reuniao_apr);
                ps.setString(56, componentes_mat_1);
                ps.setString(57, componentes_mat_2);
                ps.setString(58, componentes_mat_3);
                ps.setString(59, componentes_mat_4);
                ps.setString(60, componentes_mat_5);
                ps.setString(61, componentes_mat_6);
                ps.setString(62, componentes_mat_7);
                ps.setString(63, componentes_mat_8);
                ps.setString(64, componentes_mat_9);
                ps.setString(65, componentes_mat_10);
                ps.setString(66, componentes_mat_11);
                ps.setString(67, componentes_mat_12);
                ps.setString(68, componentes_nome_1);
                ps.setString(69, componentes_nome_2);
                ps.setString(70, componentes_nome_3);
                ps.setString(71, componentes_nome_4);
                ps.setString( 72, componentes_nome_5);
                ps.setString(73, componentes_nome_6);
                ps.setString(74, componentes_nome_7);
                ps.setString(75, componentes_nome_8);
                ps.setString(76, componentes_nome_9);
                ps.setString(77, componentes_nome_10);
                ps.setString(78, componentes_nome_11);
                ps.setString(79, componentes_nome_12);
                ps.setString(80, matricula_nome_resp_area);
                ps.setString(81, matricula_nome_resp_exec);
                ps.setString(82, responsavel_contratada);
                ps.setString(83, sst_resp);
                ps.setString(84, solicitante_serv);
                ps.setString(85, medida_controle_corte_oxicorte);
                ps.setString(86, medida_controle_corpo_estranho);
                ps.setString(87, medida_controle_ruido);
                ps.setString(88, medida_controle_perf_maos);
                ps.setString(89, medida_controle_queda_mesmo_niv);
                ps.setString(90, medida_controle_queda_obj);
                ps.setString(91, medida_controle_mont_andaime);
                ps.setString(92, medida_controle_trab_altura);
                ps.setString(93, medida_controle_queimadura);
                ps.setString(94, medida_controle_sinistro_trans);
                ps.setString(95, medida_controle_icamento);
                ps.setString(96, medida_controle_espaco_conf);
                ps.setString(97, medida_controle_iluminacao);
                ps.setString(98, medida_controle_lesao_pe_mao);
                ps.setString(99, medida_controle_calor_excessivo);
                ps.setString(100, medida_controle_poeiras_part);
                ps.setString(101, medida_controle_manu_prod_quim);
                ps.setString(102, medida_controle_proj_mat_inca);
                ps.setString(103, medida_controle_lambada_mangueira);
                ps.setString(104, medida_controle_escav_demol);
                ps.setString(105, medida_controle_limp_man_equip_eletricos);
                ps.setString(106, medida_controle_mant_limp_squip_mec);
                ps.setString(107, medida_controle_solda_contam);
                ps.setString(108, medida_controle_limp_alta_temp);
                ps.setString(109, medida_controle_desm_mont_estru);
                ps.setString(110, medida_controle_sopragem_linha);
                ps.setString(111, medida_controle_limp_lixadeira);
                ps.setString(112, medida_controle_romp_adut);
                ps.setString(113, medida_controle_comissionamento);
                ps.setString(114, medida_controle_acop_tub_sub);
                ps.setString(115, medida_controle_desabamento);
                ps.setString(116, medida_controle_avaliacao_riscos);
                ps.setString(117, medida_controle_animais_peconhe);
                
                // Executar a inserção
                ps.executeUpdate();
                
                // Fechar a conexão
                ps.close();
                connection.close();
                out.print("deu certo");
            } catch (Exception e) {
                e.printStackTrace();
                out.print("deu errado");
            }

        %>

    </body>
</html>