
<%@page import="java.sql.*" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Salvar PT</title>
    </head>
    <body>
        <%

            // declarando as variÃ¡veis e capturando a tag "name" os dados do formulÃ¡rio preencher-pt.html
            // Permissão de Trabalho Indústria
            String departamento = request.getParameter("pt-departamento");

            String equipamentoLocal = request.getParameter("pt-equip-local");

            String dataAbertura = request.getParameter("data-abertura-pt");

            String horaAbertura = request.getParameter("hora-abertura-pt");

// Seção de baixo Risco
            String areasAfetadas = request.getParameter("areas-afetadas");

            String riscosIdentificadosApr = request.getParameter("riscos-identificados-apr");

            String feitoLoto = request.getParameter("feito-loto");

            String chuveirosEmergencia = request.getParameter("chuveiros-emergencia");

            String ferramentasManuais = request.getParameter("ferramentas-manuais");

            String areaLimpa = request.getParameter("area-limpa");

            String episNaApr = request.getParameter("epis-na-apr");

            String outDocNAplica = request.getParameter("outros-doc-nao-aplica");

            String outDocPET = request.getParameter("outros-doc-pet");

            String outDocIcam = request.getParameter("outros-doc-icamento");

// Seção de alto Risco
            String acExecAut = request.getParameter("ac-exrc-aut");

            String acAtmosferaExplosiva = request.getParameter("ac-atmosfera-explosiva");

            String acSistemaLimpo = request.getParameter("ac-sistema-limpo");

            String acMonitGases = request.getParameter("ac-monit-gases");

            String acHidExt = request.getParameter("ac-hid-ext");

// Trabalho com eletricidade
            String eletricFerrIsol = request.getParameter("eletric-ferr-isol");

            String eletricAterrado = request.getParameter("eletric-aterrado");

            String eletricCasoIncend = request.getParameter("eletric-caso-incend");

            String eletricExtFacil = request.getParameter("eletric-ext-facil");

// Serviço a quente
            String serQuentPresencaBrig = request.getParameter("ser-quent-presenca-brig");

            String serQuentVent = request.getParameter("ser-quent-vent");

            String serQuentConjOxi = request.getParameter("ser-quent-conj-oxi");

            String serQuentBandProt = request.getParameter("ser-quent-band-prot");

            String serQuentSistComb = request.getParameter("ser-quent-sist-comb");

            String serQuentEsmerLix = request.getParameter("ser-quent-esmer-lix");

            String serQuentMaqSolda = request.getParameter("ser-quent-maq-solda");

            String serQuentMangFios = request.getParameter("ser-quent-mang-fios");

            String serQuentNomeBrigadista = request.getParameter("ser-quent-nome-brigadista");

// Trabalho em Altura
            String taHierProt = request.getParameter("ta-hier-prot");

            String taPontoAncNProj = request.getParameter("ta-ponto-anc-n-proj");

            String taPontoProj = request.getParameter("ta-ponto-proj");

            String taTodosEquip = request.getParameter("ta-todos-equip");

            String taVerif100 = request.getParameter("ta-verif-100");

            String taAndaime = request.getParameter("ta-andaime");

            String taPessoaContato = request.getParameter("ta-pessoa-contato");

            String taExecUsoEpi = request.getParameter("ta-exec-uso-epi");

            String taEfeitoPendulo = request.getParameter("ta-efeito-pendulo");

            String taAferirPressao = request.getParameter("ta-aferir-pressao");

// Trabalho com produtos químicos
            String tpqKitVaz = request.getParameter("tpq-kit-vaz");

            String tpqTanqDesp = request.getParameter("tpq-tanq-desp");

            String tpqChuvHid = request.getParameter("tpq-chuv-hid");

            String tpqMangEngate = request.getParameter("tpq-mang-engate");

            String tpqCarretaTravada = request.getParameter("tpq-carreta-travada");

            String tpqMotEquip = request.getParameter("tpq-mot-equip");

// Trabalho com escavação e demolição
            String tedEngInsp = request.getParameter("ted-eng-insp");

            String tedRiscosSub = request.getParameter("ted-riscos-sub");

            String tedEvitDesmo = request.getParameter("ted-evit-desmo");

            String tedAvalPet = request.getParameter("ted-aval-pet");

            String tedDistBate = request.getParameter("ted-dist-bate");

            String tedIlumSuf = request.getParameter("ted-ilum-suf");

            String tedEscorParede = request.getParameter("ted-escor-parede");

            String tedTransInt = request.getParameter("ted-trans-int");

// Trabalho com Hidrojateamento
            String thColOriRisco = request.getParameter("th-col-ori-risco");

            String thEspConf = request.getParameter("th-esp-conf");

// Trabalho com Abertura de Linhas / Equipamentos
            String taleAnalisadoRiscos = request.getParameter("tale-analisado-riscos");

            String taleMetDescont = request.getParameter("tale-met-descont");

            String taleBloqueioDupl = request.getParameter("tale-bloqueio-dupl");

            String taleServLinhaPerig = request.getParameter("tale-serv-linha-perig");

// Trabalho com Movimentação / Içamento de Cargas
            String tmicTabelaEquip = request.getParameter("tmic-tabela-equip");

            String tmicCheckListInsp = request.getParameter("tmic-check-list-insp");

            String tmicIsoladaSinaliza = request.getParameter("tmic-isolada-sinaliza");

            String tmicCondClimat = request.getParameter("tmic-cond-climat");

            String tmicOlhaisPontos = request.getParameter("tmic-olhais-pontos");

            String tmicGuindPatolado = request.getParameter("tmic-guind-patolado");

            String tmicRaioLanca = request.getParameter("tmic-raio-lanca");

// Equipamentos de Proteção Individual
            String epiMascaraFiltro = request.getParameter("epi-mascara-filtro");

            String epiMascaraSolda = request.getParameter("epi-mascara-solda");

            String epiRespiradorAut = request.getParameter("epi-respirador-aut");

            String epiProtetorFacial = request.getParameter("epi-protetor-facial");

            String epiBotaPVC = request.getParameter("epi-bota-pvc");

            String epiAvental = request.getParameter("epi-avental");

            String epiLuvaRaspa = request.getParameter("epi-luva-raspa");

            String epiLuvaPVCBorracha = request.getParameter("epi-luva-pvc-borracha");

            String epiLuvaTermica = request.getParameter("epi-luva-termica");

            String epiLuvaCobertura = request.getParameter("epi-luva-cobertura");

            String epiLuvaVaqueta = request.getParameter("epi-luva-vaqueta");

            String epiLuvaCouro = request.getParameter("epi-luva-couro");

            String epiLuvaBaixaVolt = request.getParameter("epi-luva-baixa-volt");

            String epiLuvaAltaVolt = request.getParameter("epi-luva-alta-volt");

            String epiMangasIsol = request.getParameter("epi-mangas-isol");

            String epiBalaclava = request.getParameter("epi-balaclava");

            String epiVestimenta2 = request.getParameter("epi-vestimenta-2");

            String epiVestRisco4 = request.getParameter("epi-vest-risco-4");

            String epiCintoDuplo = request.getParameter("epi-cinto-duplo");

            String epiBotinaSBiq = request.getParameter("epi-botina-s-biq");

            String epiConjImperm = request.getParameter("epi-conj-imperm");

            String epiOculosAmpla = request.getParameter("epi-oculos-ampla");

            String epiCordaNylon = request.getParameter("epi-corda-nylon");

            String epiOutros = request.getParameter("epi-outros");

// Declaração de inspeção
            String respAreaSetor = request.getParameter("resp-area-setor");

            String respExecucao = request.getParameter("resp-execucao");

            String respEmissao = request.getParameter("resp-emissao");

// Participantes
            String ptNome1 = request.getParameter("pt-nome-1");

            String ptEmpresa1 = request.getParameter("pt-empresa-1");

            String ptPa1 = request.getParameter("pt-pa-1");

            String ptNome2 = request.getParameter("pt-nome-2");

            String ptEmpresa2 = request.getParameter("pt-empresa-2");

            String ptPa2 = request.getParameter("pt-pa-2");

            String ptNome3 = request.getParameter("pt-nome-3");

            String ptEmpresa3 = request.getParameter("pt-empresa-3");

            String ptPa3 = request.getParameter("pt-pa-3");

            String ptNome4 = request.getParameter("pt-nome-4");

            String ptEmpresa4 = request.getParameter("pt-empresa-4");

            String ptPa4 = request.getParameter("pt-pa-4");

            String ptNome5 = request.getParameter("pt-nome-5");

            String ptEmpresa5 = request.getParameter("pt-empresa-5");

            String ptPa5 = request.getParameter("pt-pa-5");

            String ptNome6 = request.getParameter("pt-nome-6");

            String ptEmpresa6 = request.getParameter("pt-empresa-6");

            String ptPa6 = request.getParameter("pt-pa-6");

            String ptNome7 = request.getParameter("pt-nome-7");

            String ptEmpresa7 = request.getParameter("pt-empresa-7");

            String ptPa7 = request.getParameter("pt-pa-7");

            String ptNome8 = request.getParameter("pt-nome-8");

            String ptEmpresa8 = request.getParameter("pt-empresa-8");

            String ptPa8 = request.getParameter("pt-pa-8");

            try {

                //fazer conexÃ£o com o banco de dados Connection connection;
                PreparedStatement ps;
                Connection connection;
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/parbd", "root",
                        "");
                ps = connection.prepareStatement("INSERT INTO parbd.PT_reg ("
                        + "pt_departamento, "
                        + "pt_equip_local, "
                        + "data_abertura_pt, "
                        + "hora_abertura_pt, "
                        + "areas_afetadas, "
                        + "riscos_identificados_apr, "
                        + "feito_loto, "
                        + "chuveiros_emergencia, "
                        + "ferramentas_manuais, "
                        + "area_limpa, "
                        + "epis_na_apr, "
                        + "outros_doc_naoplica, "
                        + "outros_doc_pet, "
                        + "outros_doc_icamento, "
                        + "ac_exrc_aut, "
                        + "ac_atmosfera_explosiva, "
                        + "ac_sistema_limpo, "
                        + "ac_monit_gases, "
                        + "ac_hid_ext, "
                        + "eletric_ferr_isol, "
                        + "eletric_aterrado, "
                        + "eletric_caso_incend, "
                        + "eletric_ext_facil, "
                        + "ser_quent_presenca_brig, "
                        + "ser_quent_vent, "
                        + "ser_quent_conj_oxi, "
                        + "ser_quent_band_prot, "
                        + "ser_quent_sist_comb, "
                        + "ser_quent_esmer_lix, "
                        + "ser_quent_maq_solda, "
                        + "ser_quent_mang_fios, "
                        + "ser_quent_nome_brigadista, "
                        + "ta_hier_prot, "
                        + "ta_ponto_anc_n_proj, "
                        + "ta_ponto_proj, "
                        + "ta_todos_equip, "
                        + "ta_verif_100, "
                        + "ta_andaime, "
                        + "ta_pessoa_contato, "
                        + "ta_exec_uso_epi, "
                        + "ta_efeito_pendulo, "
                        + "ta_aferir_pressao, "
                        + "tpq_kit_vaz, "
                        + "tpq_tanq_desp, "
                        + "tpq_chuv_hid, "
                        + "tpq_mang_engate, "
                        + "tpq_carreta_travada, "
                        + "tpq_mot_equip, "
                        + "ted_eng_ins, "
                        + "ted_riscos_sub, "
                        + "ted_evit_desmo, "
                        + "ted_aval_pet, "
                        + "ted_dist_bate, "
                        + "ted_ilum_suf, "
                        + "ted_escor_parede, "
                        + "ted_trans_int, "
                        + "th_col_ori_risco, "
                        + "th_esp_conf, "
                        + "tale_analisado_riscos, "
                        + "tale_met_descont, "
                        + "tale_bloqueio_dupl, "
                        + "tale_serv_linha_perig, "
                        + "tmic_tabela_equip, "
                        + "tmic_check_list_ins, "
                        + "tmic_isolada_sinaliza, "
                        + "tmic_cond_climat, "
                        + "tmic_olhais_pontos, "
                        + "tmic_guind_patolado, "
                        + "tmic_raio_lanca, "
                        + "epi_mascara_filtro, "
                        + "epi_mascara_solda, "
                        + "epi_respirador_aut, "
                        + "epi_protetor_facial, "
                        + "epi_bota_pvc, "
                        + "epi_avental, "
                        + "epi_luva_raspa, "
                        + "epi_luva_pvc_borracha, "
                        + "epi_luva_termica, "
                        + "epi_luva_cobertura, "
                        + "epi_luva_vaqueta, "
                        + "epi_luva_couro, "
                        + "epi_luva_baixa_volt, "
                        + "epi_luva_alta_volt, "
                        + "epi_mangas_isol, "
                        + "epi_balaclava, "
                        + "epi_vestimenta_2, "
                        + "epi_vest_risco_4, "
                        + "epi_cinto_duplo, "
                        + "epi_botina_s_biq, "
                        + "epi_conj_imperm, "
                        + "epi_oculos_ampla, "
                        + "epi_corda_nylon, "
                        + "epi_outros, "
                        + "resp_area_setor, "
                        + "resp_execucao, "
                        + "resp_emissao, "
                        + "pt_nome_1, "
                        + "pt_empresa_1, "
                        + "pt_pa_1, "
                        + "pt_nome_2, "
                        + "pt_empresa_2, "
                        + "pt_pa_2, "
                        + "pt_nome_3, "
                        + "pt_empresa_3, "
                        + "pt_pa_3, "
                        + "pt_nome_4, "
                        + "pt_empresa_4, "
                        + "pt_pa_4, "
                        + "pt_nome_5, "
                        + "pt_empresa_5, "
                        + "pt_pa_5, "
                        + "pt_nome_6, "
                        + "pt_empresa_6, "
                        + "pt_pa_6, "
                        + "pt_nome_7, "
                        + "pt_empresa_7, "
                        + "pt_pa_7, "
                        + "pt_nome_8, "
                        + "pt_empresa_8, "
                        + "pt_pa_8) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");

                ps.setString(1, departamento);
                ps.setString(2, equipamentoLocal);
                ps.setString(3, dataAbertura);
                ps.setString(4, horaAbertura);

// Seção de baixo Risco
                ps.setString(5, areasAfetadas);
                ps.setString(6, riscosIdentificadosApr);
                ps.setString(7, feitoLoto);
                ps.setString(8, chuveirosEmergencia);
                ps.setString(9, ferramentasManuais);
                ps.setString(10, areaLimpa);
                ps.setString(11, episNaApr);
                ps.setString(12, outDocNAplica);
                ps.setString(13, outDocPET);
                ps.setString(14, outDocIcam);

// Seção de alto Risco
                ps.setString(15, acExecAut);
                ps.setString(16, acAtmosferaExplosiva);
                ps.setString(17, acSistemaLimpo);
                ps.setString(18, acMonitGases);
                ps.setString(19, acHidExt);

// Trabalho com eletricidade
                ps.setString(20, eletricFerrIsol);
                ps.setString(21, eletricAterrado);
                ps.setString(22, eletricCasoIncend);
                ps.setString(23, eletricExtFacil);

// Serviço a quente
                ps.setString(24, serQuentPresencaBrig);
                ps.setString(25, serQuentVent);
                ps.setString(26, serQuentConjOxi);
                ps.setString(27, serQuentBandProt);
                ps.setString(28, serQuentSistComb);
                ps.setString(29, serQuentEsmerLix);
                ps.setString(30, serQuentMaqSolda);
                ps.setString(31, serQuentMangFios);
                ps.setString(32, serQuentNomeBrigadista);

// Trabalho em Altura
                ps.setString(33, taHierProt);
                ps.setString(34, taPontoAncNProj);
                ps.setString(35, taPontoProj);
                ps.setString(36, taTodosEquip);
                ps.setString(37, taVerif100);
                ps.setString(38, taAndaime);
                ps.setString(39, taPessoaContato);
                ps.setString(40, taExecUsoEpi);
                ps.setString(41, taEfeitoPendulo);
                ps.setString(42, taAferirPressao);

// Trabalho com produtos químicos
                ps.setString(43, tpqKitVaz);
                ps.setString(44, tpqTanqDesp);
                ps.setString(45, tpqChuvHid);
                ps.setString(46, tpqMangEngate);
                ps.setString(47, tpqCarretaTravada);
                ps.setString(48, tpqMotEquip);

// Trabalho com escavação e demolição
                ps.setString(49, tedEngInsp);
                ps.setString(50, tedRiscosSub);
                ps.setString(51, tedEvitDesmo);
                ps.setString(52, tedAvalPet);
                ps.setString(53, tedDistBate);
                ps.setString(54, tedIlumSuf);
                ps.setString(55, tedEscorParede);
                ps.setString(56, tedTransInt);

// Trabalho com Hidrojateamento
                ps.setString(57, thColOriRisco);
                ps.setString(58, thEspConf);

// Trabalho com Abertura de Linhas / Equipamentos
                ps.setString(59, taleAnalisadoRiscos);
                ps.setString(60, taleMetDescont);
                ps.setString(61, taleBloqueioDupl);
                ps.setString(62, taleServLinhaPerig);

// Trabalho com Movimentação / Içamento de Cargas
                ps.setString(63, tmicTabelaEquip);
                ps.setString(64, tmicCheckListInsp);
                ps.setString(65, tmicIsoladaSinaliza);
                ps.setString(66, tmicCondClimat);
                ps.setString(67, tmicOlhaisPontos);
                ps.setString(68, tmicGuindPatolado);
                ps.setString(69, tmicRaioLanca);

// Equipamentos de Proteção Individual
                ps.setString(70, epiMascaraFiltro);
                ps.setString(71, epiMascaraSolda);
                ps.setString(72, epiRespiradorAut);
                ps.setString(73, epiProtetorFacial);
                ps.setString(74, epiBotaPVC);
                ps.setString(75, epiAvental);
                ps.setString(76, epiLuvaRaspa);
                ps.setString(77, epiLuvaPVCBorracha);
                ps.setString(78, epiLuvaTermica);
                ps.setString(79, epiLuvaCobertura);
                ps.setString(80, epiLuvaVaqueta);
                ps.setString(81, epiLuvaCouro);
                ps.setString(82, epiLuvaBaixaVolt);
                ps.setString(83, epiLuvaAltaVolt);
                ps.setString(84, epiMangasIsol);
                ps.setString(85, epiBalaclava);
                ps.setString(86, epiVestimenta2);
                ps.setString(87, epiVestRisco4);
                ps.setString(88, epiCintoDuplo);
                ps.setString(89, epiBotinaSBiq);
                ps.setString(90, epiConjImperm);
                ps.setString(91, epiOculosAmpla);
                ps.setString(92, epiCordaNylon);
                ps.setString(93, epiOutros);

// Declaração de inspeção
                ps.setString(94, respAreaSetor);
                ps.setString(95, respExecucao);
                ps.setString(96, respEmissao);

// Participantes
                ps.setString(97, ptNome1);
                ps.setString(98, ptEmpresa1);
                ps.setString(99, ptPa1);
                ps.setString(100, ptNome2);
                ps.setString(101, ptEmpresa2);
                ps.setString(102, ptPa2);
                ps.setString(103, ptNome3);
                ps.setString(104, ptEmpresa3);
                ps.setString(105, ptPa3);
                ps.setString(106, ptNome4);
                ps.setString(107, ptEmpresa4);
                ps.setString(108, ptPa4);
                ps.setString(109, ptNome5);
                ps.setString(110, ptEmpresa5);
                ps.setString(111, ptPa5);
                ps.setString(112, ptNome6);
                ps.setString(113, ptEmpresa6);
                ps.setString(114, ptPa6);
                ps.setString(115, ptNome7);
                ps.setString(116, ptEmpresa7);
                ps.setString(117, ptPa7);
                ps.setString(118, ptNome8);
                ps.setString(119, ptEmpresa8);
                ps.setString(120, ptPa8);

                ps.executeUpdate();
                
                ps.close;
                connection.close();
                out.print("Registros incluidos com sucesso!");
            } catch (Exception e) {

                out.print("Deu Erro Aqui: " + e);
            }
        %>


    </body>
</html>